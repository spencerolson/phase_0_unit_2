# U2.W5: Virus Predictor

# I worked on this challenge [by myself, with: Andy Principe].

# EXPLANATION OF require_relative
#
#
require_relative 'state_data' #require_relative allows you to load a test file that is relative to this file

class VirusPredictor
  #Initialize our instance of the VirusPredicter Class, setting the parameters state, population, population_density, region, and regional spread to instance variables.
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  #Calls VirusPredictor methods predicted_deaths and speed_of_spread with the instance variables set in the initialize method (e.g. @population_density, @population, etc.). The scope of these instance variables spans accross methods in this instance of VirusPredictor.
  def virus_effects  
    predicted_deaths #Refactored this code. We deleted the parameters that were being passed to predicted_deaths and speed_of_spread because the variables being passed are instance variables, that can be accessed by predicted_deaths and speed_of_spread without being explicitly passed in.
    speed_of_spread
  end

  private  #what is this?  If we cut and pasted this code above the virus_effects method, it would become a public method of this Class, and we would be able to call this method from outside the class.

  #This method determines the number of deaths by 1) looking at the population density instance variable, and depending on its value, 2) assigning a multiplier value and calculating amount of deaths expected (rounding down to the nearest whole person). A higher multiplier is assigned to higher population densities. Finally, the method prints how many deaths will occur during the outbreak.
  def predicted_deaths()

    case @population_density
    when 200..(1.0/0.0) 
      number_of_deaths = @population * 0.4
    when 150...200
      number_of_deaths = @population * 0.3
    when 100...150
      number_of_deaths = @population * 0.2
    when 50...100
      number_of_deaths = @population * 0.1
    else
      number_of_deaths = @population * 0.05
    end

    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"

  end

  #This method determines the speed of spread by 1) looking at the population density instance variable, and depending on its value, 2) determining how long the virus will take to spread. A shorter spread time is assigned to higher population densities. Finally, the method puts how quickly the virus will spread.
  def speed_of_spread() #in months


    case @population_density
    when 200..(1.0/0.0) 
      speed = 0.5
    when 150...200
      speed = 1.0
    when 100...150
      speed = 1.5
    when 50...100
      speed = 2.0
    else
      speed = 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each{|state_name, state_data| VirusPredictor.new(state_name, state_data[:population_density], state_data[:population], state_data[:region], state_data[:regional_spread]).virus_effects}

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
# alaska.virus_effects


