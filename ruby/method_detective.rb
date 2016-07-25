# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".capitalize
 => “InVeStIgAtIoN”

 "zom".insert(2, 'o')
 => “zoom”

"enhance".center(20)
=> "    enhance    "

"Stop! You’re under arrest!".upcase
 => "STOP! YOU’RE UNDER ARREST!"

 "the usual".concat(" suspects")
=> "the usual suspects"

 " suspects".insert(0, 'the'), (8, 'suspects')
 => "the usual suspects"

"The case of the disappearing last letter"[0...-1]
 => "The case of the disappearing last lette"

#{}"The mystery of the missing first letter"
 #=> "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".center()
# => "Elementary, my dear Watson!"

# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

"How many times does the letter 'a' appear in this string?".count "a"
=> 4