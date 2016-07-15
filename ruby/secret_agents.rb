def encrypt string
  var = 0
  x = ''
  while var < string.length
    new_letter = string[var]
    x = x + (new_letter.next)
    var += 1
  end
  return x
end


def decrypt string
  var = 0
  x = ''
  while var < string.length
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    letter = string[var]
    z = alphabet.index(letter)
    new = z-1
    x = x + alphabet[new]
    var += 1
  end
  return x
end


print decrypt(encrypt("swordfish"))



puts "Would you like to decrypt or encrypt your password?"
answer = gets.chomp
if answer == 'decrypt'
  decrypt = true
else answer == 'encrypt'
  decrypt = false
end

puts "Enter your password"
password = gets.chomp
if decrypt == true
  print decrypt(password)
elsif decrypt == false
  print encrypt(password)
end