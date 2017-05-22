require 'sqlite3'
require_relative 'song_bank_methods'

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

# User Interface/Driver Code

# Test Code
# print_songs(db)
# add_song(db, "Night Moves", "Bob Seger", 1)
# print_songs(db)

# print_list(db, "Workout")

# print_list(db, "Test 4")

# p db.execute("SELECT playlists.song_order FROM playlists WHERE name= 'Test 4'")

# print_all_lists(db)



#  Program will run until exited, where an exit message will be displayed.

puts "Welcome to Song Bank!"
wants_to_continue = true

while wants_to_continue
  valid_input = false
  while !valid_input
    puts "What would you like to do today? (Please choose a # from the menu)"
    puts "1. View all songs in your song bank."
    puts "2. Add a song to your song bank."
    puts "3. View your current playlists."
    puts "4. Create a new playlist."
    puts "5. Exit Song Bank."
  
  
    choice = gets.chomp
    if choice == '1'
      valid_input = true
      print_songs(db)
    elsif choice == '2'
      valid_input = true

    elsif choice == '3'
      valid_input = true
      print_all_lists(db)
    elsif choice == '4'
      valid_input = true

    elsif choice == '5'
      puts "Thank you for using Song Bank! Have a nice day!"
      valid_input = true
      wants_to_continue = false
    else
      puts "I'm sorry, I didn't understand you."
    end
  end
end








