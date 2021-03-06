# Methods

# print_songs will iterate through the items in the songs table and print the contents in
# a readable manner. Join tables songs and genres to retrieve the appropriate data in an
# array format that can then be used to print the data for each song.
def print_songs(db)
  all_songs = db.execute("SELECT songs.id, songs.name, songs.artist, genres.genre FROM songs JOIN genres ON songs.genre_id = genres.id")
  puts "*" * 40 + "\n\n"
  all_songs.each do |song|
    puts "#{song[0]}. \"#{song[1]}\" by #{song[2]}. Genre: #{song[3]}"    
  end
  puts "\n" + "*" * 40 + "\n\n"
  all_songs
end

# print_list will print the specified playlist in a readable way. Use the specified
# playlist name to retrieve the corresponding song order from the database. The song order
# string must be split into an array of its individual elements that correspond to the
# primary keys of songs. Iterate through this array of song primary keys to print the songs
# on the playlist in a readable way.
def print_list(db, playlist)
  song_keys = db.execute("SELECT playlists.name, playlists.song_order FROM playlists WHERE id= ?", [playlist])
  list_name = song_keys[0][0]
  song_keys = song_keys[0][1].split(' ')

  song_numerator = 1
  puts "*" * 40 + "\n\n"
  puts "Playlist: \"#{list_name}\""
  song_keys.each do |song_id|
    song_info = db.execute("SELECT songs.name, songs.artist, genres.genre FROM songs JOIN genres ON songs.genre_id = genres.id WHERE songs.id= ?", [song_id])
    song_info = song_info[0]
    puts "#{song_numerator}. \"#{song_info[0]}\" by #{song_info[1]}. Genre: #{song_info[2]}"
    song_numerator += 1
  end
  puts "\n" + ("*" * 40) + "\n\n"
  song_keys
end

# Method to display all of the stored playlists by name in a readable manner.
def print_all_lists(db)
  playlists_info = db.execute("SELECT playlists.id, playlists.name, playlists.song_order FROM playlists")

  puts "*" * 40 + "\n\n"
  puts "Playlists:"
  playlists_info.each do |list|
    puts "#{list[0]}. Name: #{list[1]}  # of Songs: #{list[2].split(' ').length}"
  end
  puts "\n" + ("*" * 40) + "\n\n"
  playlists_info
end

# add_song will query the database to see if the song is already present.
# If it is not, song will be added to list of all songs.
# If already present, a message will be printed stating so and song will not
# be added again.
def add_song(db, name, artist, genre)
  if db.execute("SELECT * FROM songs WHERE name= ? AND artist= ?", [name, artist]) == []
    db.execute("INSERT INTO songs (name, artist, genre_id) VALUES (?, ?, ?)", [name, artist, genre])
    true
  else
    puts "\"#{name}\" is already in the song bank!"
    false
  end
end

# build_list method will run when the user decides to build a new playlist. User will be
# asked to name the playlist, then manually enter songs to include, choose a length and
# randomly generate a playlist, or create a genre playlist.
def build_list(db)
  puts "Please enter a name for your new playlist:"
  new_name = gets.chomp
  puts "Please select an option: (1, 2, or 3)"
  puts "1. Build your own custom playlist."
  puts "2. Create a genre playlist."
  puts "3. Generate a randomized playlist of desired length."
  choice = gets.chomp.to_i

  if choice == 1
    new_playlist = custom_list(db)
  elsif choice == 2
    new_playlist = genre_list(db)
  elsif choice == 3
    new_playlist = random_list(db)
  else
    puts "I'm sorry, I didn't understand you..."
  end
  db.execute("INSERT INTO playlists (name, song_order) VALUES (?, ?)", [new_name, new_playlist.join(' ')])
  puts "New playlist created! Here it is:"
  print_list(db, db.execute("SELECT playlists.id FROM playlists WHERE name= ?", [new_name])[0][0])
end

# custom_list will take user input to build a playlist made up of individual song selections
# from user
def custom_list(db)
  new_playlist = []
  print_songs(db)
  puts "Please enter the song number you want to add to the playlist from the list above, or enter 'd' for done."
  loop do
    current_choice = gets.chomp
    break if current_choice.downcase == 'd'
    new_playlist << current_choice.strip
    puts "Current choices: #{new_playlist}"
    puts "Next song:"
  end
  new_playlist
end

# genre_list will take user input to build a playlist of all songs in bank from specified genre.
def genre_list(db)
  new_playlist = []
  genre_info = db.execute("SELECT * FROM genres")
  puts "Choose a genre by number, from which to create a playlist: (1 - #{genre_info.length})"
  genre_info.each { |genre| puts "#{genre[0]}. #{genre[1]}" }
  genre_selection = gets.chomp.to_i
  chosen_genre_info = db.execute("SELECT songs.id FROM songs WHERE songs.genre_id = ?", [genre_selection])
  chosen_genre_info.each { |song| new_playlist << song[0].to_s }
  new_playlist
end

# random_list will take user input to build a playlist of requested length with random songs.
def random_list(db)
  new_playlist = []
  songs_info = db.execute("SELECT songs.id FROM songs")
  puts "How many songs would you like on the playlist? (1 - #{songs_info.length})"
  list_length = gets.chomp.to_i
  list_length.times { new_playlist << songs_info.delete_at(rand(songs_info.length - 1))[0] }
  new_playlist
end