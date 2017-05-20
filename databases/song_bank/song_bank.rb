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

# Methods

def print_songs
  
end

def print_list(playlist)
  
end

def add_song(name, artist, genre)
  
end

def build_list
  
end

# Driver Code