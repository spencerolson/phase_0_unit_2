# U2.W5: Die Class 1: Numeric


# I worked on this challenge with: Tim Howard.

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

# class Die
#   def initialize(sides)
#   	raise ArgumentError, 'Your die must have at least one side.' if sides < 1
#   	@sides = sides
#     # code goes here
#   end
  
#   def sides
#     @sides
#   end
  
#   def roll
#      rand(1..@sides)
#   end
# end



# 4. Refactored Solution

class Die
  def initialize(sides)
    raise ArgumentError, 'Your die must have at least one side.' if sides < 1
    @sides = sides
  end
  
  def sides
    @sides
  end
  
  def roll
     rand(1..@sides)
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE


print "Test 1: Returns Error for -1 sides: "
begin
  test_die1 = Die.new(-1)
rescue
  puts "true" 
else
  puts "false"
end

test_die2 = Die.new(12)
puts "Test 2: Returns 12 for number of sides: #{test_die2.sides == 12}"

test_die3 = Die.new(20)
puts "Test 3: Returns a number between 1 and 20 for a 20-sided die: #{test_die3.roll.between?(1,20)}"

# 5. Reflection