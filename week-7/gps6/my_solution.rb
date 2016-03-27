# Virus Predictor

# I worked on this challenge with: David Ramirez.
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative is used to import another file into the current file. Often used for files your team has made and can be located with a reference.
# require is used more so for when the location of a file is not exactly known. Used for Ruby gems and external files.
require_relative 'state_data'

class VirusPredictor

  def self.output(data)
    data.each do |state, value|
      VirusPredictor.new(state, value[:population_density], value[:population]).virus_effects
    end
  end

# initializes the variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
   
# calls two methods & passes instance variables as arguments 
  def virus_effects
    predicted_deaths #(@population_density, @population, @state)
    speed_of_spread #(@population_density, @state)
  end
  
  private

# takes three statements in an if/else statement based 
  def predicted_deaths #(population_density, population, state)
    # predicted deaths is solely based on population density
    
      number_of_deaths = (@population * 0.4).floor if @population_density >= 200
      number_of_deaths = (@population * 0.3).floor if @population_density >= 150
      number_of_deaths = (@population * 0.2).floor if @population_density >= 100
      number_of_deaths = (@population * 0.1).floor if @population_density >= 50
      number_of_deaths = (@population * 0.05).floor 
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

# receives population density and state and calculate how fast it will spread
  def speed_of_spread #(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
      speed += 0.5 if @population_density >= 200
      speed += 1 if @population_density >= 150
      speed += 1.5 if @population_density >= 100
      speed += 2 if @population_density >= 50
      speed += 2.5
    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

VirusPredictor.output(STATE_DATA)


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

=begin

1. What are the differences between the two different hash syntaxes shown in the state_data file?

The difference between the two different hash syntaxes shown in the state_data file is how the hashes assign keys to values and how those values can be retrieved. In the STATE_DATA hash, the key (states) are assigned to another nested hash through the use of a hash rocket. Within those hashes, the keys (population density & population) are assigned to the values using the symbols. The first hash key values can be retrieved by calling the key (state) in parenthesis while the nested hash can be called upon with symbols.

2. What does require_relative do? How is it different from require?

Require_relative is used to link another file to the current file. It's similar to the concept of linking a CSS style sheet to a HTML page. Require_relative files are usually located in the same folder as the current file and their location is known. This differs from using the require method which links a file, but the location of the file isn't necessary known. This means that ruby searches all of the files on hand to locate the file required (takes more time to process). Require_relative is often used when linking files that your team has made while the require method is used more so to link gems and preexisting files. 

3. What are some ways to iterate through a hash?

There are several methods that can be utilized to iterate through a hash. The most popular of these methods is .each. This method is used to run through each key and/or value of the hash based on your specifications. It processes the block of code for each key/value until it iterates through the whole hash. This is one of the more popular ways to iterate over a hash.

4. When refactoring virus_effects, what stood out to you about the variables, if anything?

The virus_effects method had unnecessary parameters. Although in JavaScript these parameters would be ignored, in Ruby the computer waits until the parameters are declared. In the virus_effects method, the parameters weren't needed so removing the parameters and leaving the variables served as a refactored solution.

5. What concept did you most solidify in this challenge?

The concepts of creating a class, the use of the 'required_relative' method, and driver code were solidified in the challenge. 

=end