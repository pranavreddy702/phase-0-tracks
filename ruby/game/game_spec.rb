require_relative 'word_game'

describe WordGame do 
  let(:game){WordGame.new("guess")}

  it "breaks word given into letter array on initialization" do 
    expect(game.letters).to eq ["g", "u", "e", "s", "s"]
  end  
  it "sets guess count at 0 on initialization" do 
    expect(game.guess_count).to eq 0
  end  
  it "sets guesses to double the letters on initialization" do 
    expect(game.guess_allowed).to eq 5*2
  end 
  it "sets guessed letters array initialization" do 
    expect(game.guessed_letters).to eq []
  end 
  it "sets new word array to blanks length which is equal to the array on initialization" do 
    expect(game.new_word).to eq ['_', '_', '_', '_', '_']
  end 
  it "Increases guess_count by 1 only if new letter is entered" do
    game.increase_count('a')
    expect(game.guess_count).to eq 1
  end 

  it "Takes in a guess and adds that letter to guessed letters array" do
    game.enter_guess('y')
    expect(game.guessed_letters).to eq ['y']
  end 
  it "Checks whether the letter is in the original word and enters that into new array at correct index" do 
    game.evaluate_guess('x')
    expect(game.new_word).to eq ['_', '_', '_', '_', '_']
  end 
end 