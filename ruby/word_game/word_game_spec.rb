require_relative 'word_game'

describe WordGame do
  let(:game) { WordGame.new("Test phrase") }

  it "User 1 enters word or phrase to be guessed" do
    expect(game.secret_word).to eq "Test phrase".split('')
  end

  it "Allowed wrong guesses is calculated based on secret word length" do
    expect(game.wrong_guesses_left).to eq 12
  end

  it "User2 inputs a guess letter, guess word is updated with all instances of it" do
    
  end

  it "Guesses are stored in guess array" do

  end

  it "Repeat guesses don't count against player" do

  end

  it "Updated guess word is printed after each guess" do

  end

  it "game_over becomes true once secret word and guess word are equivalent & <= max guesses" do

  end

  it "User1 can only input alpha characters" do

  end

  it "User2 can only input alpha character guesses" do

  end

end
