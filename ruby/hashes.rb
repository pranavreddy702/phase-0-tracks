=begin
-Ask for the client's name
-Ask for the client's age
-Ask the client how many children they have
-Ask for the desired theme
-List available themes and give the choice to chose one
-Yes or No options
-Creat a method to convert yes or no answers to true or false.
-Convert input to the correct data type 
-Creat empty hash
-Print the results
-Allow the user to update or make changes to input
-If input is 'no' then no changes 
-If input is 'yes' replace key/value data
-Print the result
=end


# Method to define boolean

def theme(key)
	if key == "yes"
		key = true
	else key == "no"
		key = false
end
end 


# Empty Hash 

interior_design = Hash.new(0)


# Questions for clients:

puts "Interior design theme application:"
puts ""

puts "What is the client's name?"
interior_design[:name] = gets.chomp

puts "What is the client's age?"
interior_design[:age] = gets.chomp.to_i

puts "How many children do you have?"
interior_design[:children] = gets.chomp.to_i

puts "Which theme would you like? (Please answer when prompted.)"
puts "Gothic theme (yes or no):"
interior_design[:Gothic] = theme(gets.chomp)
puts "Hawaii theme (yes or no):"
interior_design[:Hawaii] = theme(gets.chomp)
puts "Outdoors theme (yes or no):"
interior_design[:Outdoors] = theme(gets.chomp)
puts "Indian theme (yes or no):"
interior_design[:Indian] = theme(gets.chomp)


# Print results 

p interior_design


# Modify the data

puts "Would you like to make any updates? (If no type 'none')"
updates = gets.chomp

if updates != "none"
	puts "What would you like to update?"
		updated_key = gets.chomp.to_sym
	puts "Please enter update:"
		updated_value = gets.chomp
		interior_design[updated_key] = updated_value
end


# Print new results

puts "This is your updated information"

puts interior_design