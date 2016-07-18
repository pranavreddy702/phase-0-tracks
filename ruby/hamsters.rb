  puts "What's the name of the Hamster?"
name= gets.chomp

puts "How loud is #{name}, on a scale of 1 (least) to 10 (most)?"
loud= gets.chomp.to_i

puts "What color fur does #{name} have?"
fur= gets.chomp

puts "Is #{name} a good candidate for adoption (yes/no)?"
candidate= gets.chomp
  if candidate== 'yes'
    candidate= true
  else
    candidate= false
  end

puts "What is #{name}'s estimated age?"
age= gets.chomp.to_i
  if age== ""
    age= nil
  end

puts ""

puts "The name of the Hamster is #{name}."
puts "#{name}, on a scale of 1 (least) to 10 (most), an #{loud} in loudness."
puts "#{name} has #{fur} color fur."
if candidate== true
  puts "#{name} is a good candidate for adoption."
else
  puts "#{name} is not a good candidate for adoption."
end
puts "#{name} is age, estimated."