# U2.W5: Die Class 1: Numeric


# I worked on this challenge with: Tim Howard.

# 2. Pseudocode

# Input: An integer representing the number of sides on the die
# Output: .sides returns an integer representing the number of sides on the die, .roll returns a random integer between 1 and the number of sides
# Steps: 
1. Create the .initialize method, which takes 1 argument -- the number of sides on the die.
2. Within the .initialize method, raise an ArgumentError if the number of sides is less than 1. Otherwise, set a local variable @sides equal to the number of sides input.
3. Create the .sides method, which returns the instance variable @sides
4. Create the .roll method, which returns a random number between 1 and @sides, inclusive.


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
# In this challenge, I learned how to raise an ArgumentError and how to add a custom error message. In addition, I learned how to create test code for errors, using a begin-rescue-else statement. We got stuck for a bit on the rand function, because we weren't sure if it was inclusive or exclusive. After some research we found that using the syntax 1..@sides will include both 1 and @sides.