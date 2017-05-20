# Song Bank

Build a program that will store a collection of various songs, along with their artist and genre info. Users will be able to:
  * Add songs to the collection.
  * View built-in or previously created playlists.
  * Create their own playlists.

## Pseudocode
require sqlite gem

Initialize the database and build it if not already present on the computer.

### Methods:
* print_songs
* print_list
* add_song
* build_list

### Driver code:
Welcome message.
Display a list of options and ask the user what they would like to do.

 * View all songs
 * Add a song
 * View current playlists
 * Create new playlist
 * Exit

 Program will run until exited, where an exit message will be displayed.