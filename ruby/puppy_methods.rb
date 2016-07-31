class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(times)
  	times.times {puts "Woof!"}
	end

	def rollover
		puts "rolls over"
	end
	def dog_years(human)
		human/10.5
	end
	def run(location)
		puts "Ran to #{location}"
	end
	def initialize
		puts "Initializing new puppy instance ..."
	end
end

puppy = Puppy.new

puppy.fetch("ball")
puppy.speak(4)
puppy.rollover
puts puppy.dog_years(40)
puppy.run("park")

class Cat
	def initialize(color,breed)
		@color=color
		@breed=breed
	end
	def purr
		puts "I am hungry!"
	end
	def angry
		puts "Don't touch me!"
	end

end

breed = ["a", "b", "c"]
colors = ["brown", "black", "white"]

cats = Array.new

50.times do 
	cat = Cat.new(colors[Random.rand(colors.length)], breed[Random.rand(breed.length)])
	cats.push(cat)
end

cats.each do |cat|
	cat.purr 
	cat.angry
end


