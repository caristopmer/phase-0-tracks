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
      15
    elsif word.length > 6 && word.length < 16
      10 + ((word.length - 6) / 2)
    else
      10
    end
  end

 # Print method to display status of guessed word
  def word_status
    print "Word Status: " + @guessed_word.join(' ')
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

puts "Player 1, please enter the word or phrase to be guessed now!"
game = WordGame.new(take_input(0))

p game







