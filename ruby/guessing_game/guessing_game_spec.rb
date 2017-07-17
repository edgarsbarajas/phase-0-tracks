require_relative "guessing_game"

describe Game do
  let (:game) {Game.new("hello")}

  it "checks if guess has already been guessed before" do
    game.guessed_letters = ["a", "b", "c"]

    expect(game.has_been_guessed? "b").to eq true
    expect(game.has_been_guessed? "d").to eq false
  end

  it "replaces underscore array element with a correct guess" do
    expect(game.update_underscore_array("e", 1)).to eq ["_","e","_","_","_"]
  end

  it "submits a guess that has not been guessed before" do
    expect(game.submit_guess("d")).to eq true
  end
end