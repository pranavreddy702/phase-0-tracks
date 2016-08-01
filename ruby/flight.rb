module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(noises)
  	noises + "!!!!" + " :)"
  end

end


class Cat
	include Shout
end

class Champion
	include Shout
end


#p Shout.yell_angrily("Nine Nine Nine")
#p Shout.yelling_happily("Yeeeehawwww")