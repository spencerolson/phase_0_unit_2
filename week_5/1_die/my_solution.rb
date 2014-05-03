# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: Tim Howard].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class Die
  def initialize(sides)
  	raise ArgumentError, 'Your die must have at least one side.' if sides < 1
  	@sides = sides
    # code goes here
  end
  
  def sides
    @sides
  end
  
  def roll
     rand(1..@sides)
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE


test_die = Die.new(12)
puts "Test 1: Returns 12 for number of sides: #{test_die.sides == 12}"

# 5. Reflection