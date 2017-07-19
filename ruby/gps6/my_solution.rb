# Virus Predictor
# I worked on this challenge [with: Charlie Webber].
# We spent [#] hours on this challenge.
# EXPLANATION OF require_relative
# Gives us access to another file and that information. is a relative path. While require needs an absolute path

require_relative 'state_data'

class VirusPredictor
  attr_accessor :population , :population_density
  attr_reader :state

#Intializes- assigns values to instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#This is running two instance methods to get the virus effects.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

#Dialing down scope to inside the class. Some data does not need to be made public. Ruby makes everything public unless specified otherwise.
#Gives the number of deaths based on the population density of that state.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if self.population_density >= 200
      number_of_deaths = (self.population * 0.4).floor
    elsif self.population_density >= 150
      number_of_deaths = (self.population * 0.3).floor
    elsif self.population_density >= 100
      number_of_deaths = (self.population * 0.2).floor
    elsif self.population_density >= 50
      number_of_deaths = (self.population * 0.1).floor
    else
      number_of_deaths = (self.population * 0.05).floor
    end
    print "#{self.state} will lose #{number_of_deaths} people in this outbreak"
  end

#How fast the virus will spread based on the state and its population density.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    if self.population_density >= 200
      speed += 0.5
    elsif self.population_density >= 150
      speed += 1
    elsif self.population_density >= 100
      speed += 1.5
    elsif self.population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end

#=======================================================================
# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state, population_info|
  current_state = VirusPredictor.new(state,population_info[:population_density], population_info[:population])
  current_state.virus_effects
end

#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file? - The main hash uses a string and a rocket while the nested hash uses a symbol.

# What does require_relative do? How is it different from require? - Require_relative takes a file and acts as if it was written in the current file, using a relative path. Require does the same thing but with an absolute path.

# What are some ways to iterate through a hash? - Iterate through a hash using #each, #each_key #each_value

# When refactoring virus_effects, what stood out to you about the variables, if anything? - Variables live throughout the class scope. There is no need to have them as arguments/parameters when they can be reached using an attr_reader/accessor.

# What concept did you most solidify in this challenge? - The 'private' was solidified for me even though that wasnt really the goal for this challenge. Also, the fact that we shouldnt be reaching for instance variables throughout the class using the @ but we should be using attribute accessors and readers.