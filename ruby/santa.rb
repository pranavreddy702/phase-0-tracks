class Santa
	def speak
		puts "Ho, ho, ho! Haaaaapy holidays"
	end
	def eat_milk_and_cookies(type)
		puts "That was a good #{type}"
	end
	def initialize(gender, ethnicity)
    @age = 0
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    puts "Initializing new Santa..."

  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking.push(reindeer_name)
  end

def age
    @age
  end

  def ethnicity
    @ethnicity
  end

  def gender
    @gender
  end

  #molly = Santa.new("molly")

  #molly.speak
  #molly.eat_milk_and_cookies("snickerdoodle")
end
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

20.times do
	new_santa = Santa.new(example_genders.sample, example_ethnicities.sample)
	new_santa.age = rand(0..140)
	puts "This Santa is #{new_santa.gender} gender, #{new_santa.ethnicity} ethnicity, and #{new_santa.age} years old."
end

