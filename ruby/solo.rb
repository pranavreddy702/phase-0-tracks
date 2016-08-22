
  
#rescue Exception => end
#Word Game Class

  #Initialize class method 

 



      #Set Initialize instance variables 

        #Array thats made up of the word's characters

        #Guess counter

        #Amount of guesses allowed

        #Empty array to store the guessed letters 

        #A new word array that stores the current word with the guessed letters. 


   #Set getter methods  

   #Def method for when a guess is entered

    #input a letter 

    

      #Store letter entered into the guessed letter array. 

 #updated guessed letters array.  

   #Def a method to increase the guess count by 1 only if new letter is entered.

    #input a letter 

   

      #If letter entered is not in the array

        #Increase guess count by 1

    #guess count instance variable.     

   #Def method that evaluates the letter entered 

   #input a letter 

 

        #If the letter entered is in the word

          #Find all indexes of that letter in the word and store that in new index array 

          #Iterate each index array.
          # replace the letter guessed


class WordGame 
attr_reader :letters, :new_word, :guessed_letters, :guess_count, :guess_allowed

  def initialize(word) 
    @letters = word.chars
    @guess_count = 0
    @guess_allowed = @letters.count * 2
    @new_word= Array.new(@letters.count, '_')
    @guessed_letters = []
  end  
  def increase_count(letter_entered)
    if !@guessed_letters.include?(letter_entered)
      @guess_count += 1
    end     
  end  
  def enter_guess(letter_entered)
    @guessed_letters << letter_entered
  end 
  def evaluate_guess(letter_entered)
    if @letters.include?(letter_entered)
      index = letters.each_index.select {|x| letters[x] == letter_entered}
      index.each do |z|
        @new_word[z] = letter_entered
      end    
    end 
    @new_word 
  end 
end   


puts "Welcome, Player 2 must guess the word Player 1 has!"
puts "Player 2 has only got a limited number of guesses!."
puts "Player 1 please enter a word for player 2 to guess!."
word = gets.chomp.downcase
game = WordGame.new(word)
puts "The word has #{word.length} letters."

until game.guess_allowed - game.guess_count == 0 || game.new_word.join("") == word 
  puts "You have #{game.guess_allowed - game.guess_count} guesses left."
  puts "Enter a letter"
  letter_entered = gets.chomp
  game.increase_count(letter_entered)
  game.enter_guess(letter_entered)
  game.evaluate_guess(letter_entered)
  puts "So far you have got:" 
  p game.new_word.join(" ")
end 
if game.new_word.join("") == word 
  puts "Player 2 you WON!"
else 
  puts "Player 2 you LOST!!"
end    