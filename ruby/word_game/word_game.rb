class Word_Game
  def initialize(word)
    @secret_word = word.split('')
    @guessed_word = word_hider(word)
  end

  def word_status
    print "Word Status: " + @guessed_word.join
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
end

game = Word_Game.new("test game")

p game
# Input verification method is done in driver code! alphabet string with 
# space to check input against. iterate though input to make sure each char is alpha or a space.