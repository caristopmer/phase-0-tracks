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
    game.guess_check("t")
    expect(game.guessed_word).to eq "t__t ______".split('')
  end

  it "Guesses are stored in guess array" do
    game.guess_check("t")
    expect(game.guess_log).to eq ["t"]
  end

  it "Repeat guesses don't count against player" do
    game.guess_check("e")
    expect(game.guess_check("e")).to eq nil
  end

  it "Updated guess word is printed after each guess" do
    game.guess_check("t")
    game.guess_check("s")
    expect(game.guessed_word.join(' ')).to eq "t _ s t   _ _ _ _ s _"
  end

  it "game_over becomes true once secret word and guess word are equivalent & <= max guesses" do
    game.guessed_word = "test ph_ase".split('')
    game.guess_check("r")
    expect(game.is_over).to eq true
  end
end