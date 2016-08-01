module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(noises)
  	noises + "!!!!" + " :)"
  end

end


class Loser
	include Shout
end

class Winner
	include Shout
end


#p Shout.yell_angrily("Ughhh")
#p Shout.yelling_happily("Yeeeehawwww")

#Driver Code
loser = loser.new

p .yell_angrily("Ughhhhhhh")
p winner.yelling_happily("Yeeeehawwww")

winner = Winner.new

p loser.yell_angrily("Nooooooooo")
p winner.yelling_happily("Yeeeeaaahhhhh")