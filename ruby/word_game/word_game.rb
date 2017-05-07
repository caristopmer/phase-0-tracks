=begin
Word Game Pseudo Code

One user enters a word or phrase, another user attempts to guess.
- utilize a class to create an instance of a game.
Limited number of guesses, relative to length of word.
Repeat guesses don't count against user.
Continual update of word status after each guess.
Congratulatory message on win, taunt on loss

Game Class:
Attributes:
  secret_word
  guessed_word
  wrong_guesses_remaining
  previous_guess_log
  game over boolean

Methods:
  initialize
  print_word_status
  check_guess
    take in guess as argument
    check if guess has already been made
    if not already guessed, plug guess into word
      - update guessed word if letter is correct
      - otherwise, reduce wrong guesses left by 1
      - add guess to previous guess log
      - check for secret word complete or out of guesses, adjust game_over if necessary.
  wrong_guess_num_calculator
  secret_word_hider

Driver Code:
  Take in secret word from user 1
  Allow user to guess letters for the secret word in a loop.
  Loop will run until the game is over either by guessing the word or
running out of guesses.
  Display message based on win or loss
  Ask the players if they want to play again.
=end

class WordGame
  attr_accessor :secret_word, :guessed_word, :wrong_guesses_left, :guess_log, :is_over

  def initialize(word)
    @secret_word = word.split('')
    @guessed_word = word_hider(word)
    @wrong_guesses_left = wrong_guess_calc(word)
    @guess_log = []
    @is_over = false
  end

# Method for plugging a user guess in to see if correct or not, updates guessed word,
# wrong guess count, and game over status
  def guess_check(guess)
    if @guess_log.include?(guess)
      puts "You already guessed that! Try again."
    elsif guess == " "
      puts "No need to guess space characters!"
    else
      index = 0
      char_found = false
      @secret_word.each do |char|
        if guess == char.downcase
          @guessed_word[index] = char
          char_found = true
        end
        index += 1
      end
      @wrong_guesses_left -= 1 if !char_found
      @guess_log << guess
      @is_over = @secret_word == @guessed_word || @wrong_guesses_left == 0
    end
  end

 # Method to transform the secret word into blank spaces to be guessed and filled.
  def word_hider(word)
    hidden_word = []
    word.split('').each do |char|
      if char == ' '
        hidden_word << ' '
      else
        hidden_word << '_'
      end
    end
    hidden_word
  end

 # Method to determine the number of wrong guesses to allow based on secret word length.
  def wrong_guess_calc(word)
    if word.length >= 16
      8
    elsif word.length > 6 && word.length < 16
      6 + ((word.length - 6) / 5)
    else
      5
    end
  end

 # Print method to display status of guessed word
  def word_status
    puts "Word Status: " + @guessed_word.join(' ')
    puts "#{@wrong_guesses_left} incorrect guesses left."
  end
end
# End class WordGame


# Method to take valid input from user. Seeded with 0 or 1 based on if it is a letter
# guess or the initial secret word.
def take_input(seed)
  valid_chars = 'abcdefghijklmnopqrstuvwxyz '
  if seed == 1
    valid = false
    puts "Guess a letter:"
    until valid
      input = gets.chomp
      valid = input.length == 1 && valid_chars.include?(input.downcase)
      puts "Please guess a single character of the alphabet:" if !valid
    end
    input.downcase
  else
    valid = false
    puts "(Please enter only characters of the alphabet!)"
    until valid
      valid = true
      input = gets.chomp.split('')
      input.each do |char|
        if !valid_chars.include?(char.downcase)
          valid = false
        end
      end
      puts "Only letters please!" if !valid
    end
    input.join('')
  end
end

# Begin Driver Code

puts "Welcome to Word Game!"
puts "The rules are simple: One person enters a word or phrase"
puts "for another person to try to guess. Let's Begin!"
replay = true

while replay
  puts "Player 1, please enter the word or phrase to be guessed now!"
  game = WordGame.new(take_input(0))
  puts `clear`
  puts "Perfect! Okay, Player 2:"
  
  until game.is_over
    game.word_status
    letter_guess = take_input(1)
    game.guess_check(letter_guess)
  end
  
  if game.secret_word == game.guessed_word
    puts "Congratulations, you got it! The secret word/phrase was:"
    puts "* * * " + game.secret_word.join('') + " * * *"
    puts "SUCCESS!!!"
  else
    puts "Wow, you really screwed that one up... Next time you should actually try!"
    puts "GAME OVER"
  end
  loop do
    puts "Would you like to play again? (y/n)"
    input = gets.chomp
    if input.downcase == "y" || input.downcase == "yes"
      puts `clear`
      break
    elsif input.downcase =="n" || input.downcase == "no"
      replay = false
      puts "Thanks for playing!"
      break
    else
      puts "Huh? (Y)es or (N)o please..."
    end
  end
end