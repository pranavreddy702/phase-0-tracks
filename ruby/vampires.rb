#!/usr/bin/env ruby -wKU
puts "How many employees will be processed"
number=gets.chomp

puts "what is your name"
name= gets.chomp

puts "How old are you? What year were you born?"
age= gets.chomp

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic= gets.chomp

puts "Would you like to enroll in the company’s health insurance?"
insurance=gets.chomp

if age=true && garlic=true
	puts "Probably not a vampire"

elsif age= false && garlic=false
	puts "Probably a vampire"

elsif age=false && garlic=false
	puts "Almost certainly a vampire"

elsif name= "Drake Cula" || "Tu Fang"
	puts "Definetely a vampire"
else
	puts "Results inconclusive"
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends." 

