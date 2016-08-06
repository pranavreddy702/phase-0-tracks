# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require relative links local file
# require linking files that are not local 
require_relative 'state_data'

class VirusPredictor

  #defines 3 parameters for class and sets instance variables 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# calling predicred deaths and speed of spread methods
  

  def virus_effects
    predicted_deaths 
    speed_of_spread 
  end
private
  
# using if else statemnt to predict deaths based on population and population density
  def predicted_deaths #(population_density, population, state)
    # predicted deaths is solely based on population density

      case 
     
     when @population_density >= 200 then number_of_deaths = (@population * 0.4).floor

     when @population_density >= 150 then number_of_deaths = (@population * 0.3).floor

     when @population_density >= 100 then number_of_deaths = (@population * 0.2).floor

    when @population_density >= 50 then number_of_deaths = (@population * 0.5).floor


      else number_of_deaths = (@population * 0.05).floor

      end

    #elsif @population_density >= 150
     # number_of_deaths = (@population * 0.3).floor
    #elsif @population_density >= 100
     # number_of_deaths = (@population * 0.2).floor
    #elsif @population_density >= 50
     #
     #number_of_deaths = (@population * 0.05).floor
    #end


    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# using if else statement to predict how fast the virus spreads 
  def speed_of_spread #(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

  when @population_density >= 200 then speed += 0.5
  when @population_density >= 150 then speed += 1
  when @population_density >= 100 then speed += 1.5
  when @population_density >= 50 then speed  += 2
  else speed += 2.5
end

    #if @population_density >= 200
    #  speed += 0.5
    #elsif @population_density >= 150
    #  speed += 1
    #elsif @population_density >= 100
    #  speed += 1.5
    #elsif @population_density >= 50
    #  speed += 2
    #else
    #  speed += 2.5
    #end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects
#
#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects
#
#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects
#
#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects

STATE_DATA.each do |state, population_info|
  state_predictor = VirusPredictor.new(state, population_info[:population_density], population_info[:population])
  state_predictor.virus_effects
end


#=======================================================================
# Reflection Section