require_relative 'word_game'

describe WordGame do
  let(:game) { WordGame.new("test phrase") }

  it "User 1 enters word or phrase to be guessed" do
    expect(game.secret_word).to eq "test phrase".split('')
  end

  it "Allowed wrong guesses is calculated based on secret word length" do
    expect(game.wrong_guesses_left).to eq 12
  end

  it "User2 inputs a guess letter, guess word is updated with all instances of it" do
    game.guess_plug("t")
    expect(game.guessed_word).to eq "t__t ______".split('')
  end

  it "Guesses are stored in guess array" do
    game.guess_plug("t")
    expect(game.guess_log).to eq ["t"]
  end

  it "Repeat guesses don't count against player" do
    game.guess_plug("e")
    expect(game.guess_plug("e")).to eq nil
  end

  it "Updated guess word is printed after each guess" do
    game.guess_plug("t")
    game.guess_plug("s")
    expect(game.guessed_word.join(' ')).to eq "t _ s t   _ _ _ _ s _"
  end

  it "game_over becomes true once secret word and guess word are equivalent & <= max guesses" do

  end

  it "User1 can only input alpha characters" do

  end

  it "User2 can only input alpha character guesses" do

  end

end