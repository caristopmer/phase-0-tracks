require 'sqlite3'

# Create or locate database
db = SQLite3::Database.new("song_bank.db")

# Build initial database if first run of program
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS songs (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    artist VARCHAR(255),
    genre_id INT,
    FOREIGN KEY (genre_id) REFERENCES genres(id)
  )
SQL
db.execute(create_table_cmd)

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS playlists (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    song_order VARCHAR(255)
  )
SQL
db.execute(create_table_cmd)

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS songs_playlists (
    songs_id INT,
    playlists_id INT,
    FOREIGN KEY (songs_id) REFERENCES songs(id),
    FOREIGN KEY (playlists_id) REFERENCES playlists(id)
  )
SQL
db.execute(create_table_cmd)

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS genres (
    id INTEGER PRIMARY KEY,
    genre VARCHAR(255)
  )
SQL
db.execute(create_table_cmd)


# Populate default songs and playlists
if db.execute("SELECT * FROM genres").length == 0
  db.execute("INSERT INTO genres (genre) VALUES ('Rock')")
  db.execute("INSERT INTO genres (genre) VALUES ('Pop')")
  db.execute("INSERT INTO genres (genre) VALUES ('Metal')")
  db.execute("INSERT INTO genres (genre) VALUES ('Country')")
  db.execute("INSERT INTO genres (genre) VALUES ('Electronic')")
end
if db.execute("SELECT * FROM songs").length == 0
  db.execute("INSERT INTO songs (name, artist, genre_id) VALUES ('Strobe', 'Deadmau5', 5)")
  db.execute("INSERT INTO songs (name, artist, genre_id) VALUES ('Sandstorm', 'Darude', 5)")
  db.execute("INSERT INTO songs (name, artist, genre_id) VALUES ('Take It Easy', 'Eagles', 1)")
  db.execute("INSERT INTO songs (name, artist, genre_id) VALUES ('LA Woman', 'The Doors', 1)")
  db.execute("INSERT INTO songs (name, artist, genre_id) VALUES ('Billie Jean', 'Michael Jackson', 2)")
  db.execute("INSERT INTO songs (name, artist, genre_id) VALUES ('Material Girl', 'Madonna', 2)")
  db.execute("INSERT INTO songs (name, artist, genre_id) VALUES ('Master of Puppets', 'Metallica', 3)")
  db.execute("INSERT INTO songs (name, artist, genre_id) VALUES ('Iron Man', 'Black Sabbath', 3)")
  db.execute("INSERT INTO songs (name, artist, genre_id) VALUES ('Friends In Low Places', 'Garth Brooks', 4)")
  db.execute("INSERT INTO songs (name, artist, genre_id) VALUES ('My Maria', 'Brooks & Dunn', 4)")
end
if db.execute("SELECT * FROM playlists").length == 0
  db.execute("INSERT INTO playlists (name, song_order) VALUES ('Rockin Out', '4 7 8')")
  db.execute("INSERT INTO playlists (name, song_order) VALUES ('Workout', '1 2 5 9 10')")
  db.execute("INSERT INTO playlists (name, song_order) VALUES ('Long Songs', '1 4 7')")
end

# Methods

# print_songs will iterate through the items in the songs table and print the contents in
# a readable manner. Join tables songs and genres to retrieve the appropriate data in an
# array format that can then be used to print the data for each song.
def print_songs(db)
  all_songs = db.execute("SELECT songs.name, songs.artist, genres.genre FROM songs JOIN genres ON songs.genre_id = genres.id")
  song_numerator = 1
  puts "*" * 40 + "\n\n"
  all_songs.each do |song|
    puts "#{song_numerator}. \"#{song[0]}\" by #{song[1]}. Genre: #{song[2]}"
    song_numerator += 1    
  end
  puts "\n" + "*" * 40
  all_songs
end

# print_list will print the specified playlist in a readable way. Use the specified
# playlist name to retrieve the corresponding song order from the database. The song order
# string must be split into an array of its individual elements that correspond to the
# primary keys of songs. Iterate through this array of song primary keys to print the songs
# on the playlist in a readable way.
def print_list(db, playlist)
  song_keys = db.execute("SELECT playlists.song_order FROM playlists WHERE name= ?", [playlist])
  song_keys = song_keys[0][0].split(' ')

  song_numerator = 1
  puts "*" * 40 + "\n\n"
  puts "Playlist: \"#{playlist}\""
  song_keys.each do |song_id|
    song_info = db.execute("SELECT songs.name, songs.artist, genres.genre FROM songs JOIN genres ON songs.genre_id = genres.id WHERE songs.id= ?", [song_id])
    song_info = song_info[0]
    puts "#{song_numerator}. \"#{song_info[0]}\" by #{song_info[1]}. Genre: #{song_info[2]}"
    song_numerator += 1
  end
  puts "\n" + "*" * 40
  song_keys
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

def build_list(db)
  
end

# Driver Code

print_songs(db)
add_song(db, "Night Moves", "Bob Seger", 1)
print_songs(db)

print_list(db, "Workout")