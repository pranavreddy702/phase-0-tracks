
loop do
	
under_cover_names = Hash.new(0)


def new_vowels(name)
	name.map! do |vowel|
		vowel.gsub(/[aeiou]/, 'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a')
	end
end


def new_consonants(name)
	name.map! do |consonants|
		consonants.gsub(/[bcdfghjklmnpqrstvwxyz]/, "b" => "c", "c" => "d", "d" => "f", "f" => "g",	"g" => "h", "h" => "j", "j" => "k", "k" => "l", "l" => "m", "m" => "n", "n" => "p", "p" => "q", "q" => "r", "r" => "s", "s" => "t", "t" => "v", "v" => "w",	"w" => "x",	"x" => "y", "y" => "z", "z" => "b")
	end
end


puts "Please enter your full name:"
name = gets.chomp.downcase.split(' ').reverse


# Print updated name with changed vowels and changed consonants

name = new_vowels(name)
name = new_consonants(name)

# Create a method to capitalize the first letter in each name

def cap_letters(new_name)
	new_name.map do |capitalize|
		capitalize.capitalize
	end
end

# Print the updated results: 

new_name = cap_letters(name).join(" ")

puts ""
puts "Your new hidden identity is: #{new_name}"
puts "" 


# Loop through the entire code to ask the user for more names. 

# Ask the user for their name repeatedly until they type 'quit'

puts "Would you like to try more names? (Type 'yes' to enter more names or 'no' when finished)"
answer = gets.chomp
if answer == "yes"
	puts ""
elsif answer == "no"
	break
else answer == ""
	break 
end
end 

# Storing the data and printing it out:

puts ""
puts "Would you like to see your results? (y/n)"
results = gets.chomp

until results == "y" || results == "n"
puts "Please type 'y' or 'n'."
results = gets.chomp
end
if results == "y"
	 under_cover_names.each do |name, new_name|
	 end
	puts ""
	puts "Agent, your name #{name} has been changed to #{new_name}."
	puts ""
	#p under_cover_names
else results == "n"
	puts ""
	puts "Agent, welcome to the team."
end 