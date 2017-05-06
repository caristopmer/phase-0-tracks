class WordGame
  attr_accessor :secret_word, :guessed_word, :wrong_guesses_left, :guess_log, :is_over

  def initialize(word)
    @secret_word = word.split('')
    @guessed_word = word_hider(word)
    @wrong_guesses_left = wrong_guess_calc(word)
    @guess_log = []
    @is_over = false
  end

  def guess_plug(guess)
    if !@guess_log.include?(guess)
      index = 0
      char_found = false
      @secret_word.each do |char|
        if guess == char
          @guessed_word[index] = guess
          char_found = true
        end
        index += 1
      end
      @wrong_guesses_left -= 1 if !char_found
      @guess_log << guess
    else
      puts "You already guessed that! Try again."
    end
  end

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

  def wrong_guess_calc(word)
    if word.length >= 16
      15
    elsif word.length > 6 && word.length < 16
      10 + ((word.length - 6) / 2)
    else
      10
    end
  end

  def word_status
    print "Word Status: " + @guessed_word.join(' ')
  end
end

# Input verification method is done in driver code! alphabet string with 
# space to check input against. iterate though input to make sure each char is alpha or a space.