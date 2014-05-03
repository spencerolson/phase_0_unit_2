# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge with Andy Principe.

# 2. Pseudocode

# Input: An array 
# Output: .sides returns the length of the array; .roll returns the value of a random element in the array
# Steps: 
# 1. Define Class Die
# 2. Define method .initialize, which takes in 1 array Argument
# 3. If an empty array(or no array) is passed in, return ArgumentError
# 4. If the array is non-empty, set instance variable @labels equal to the array passed in
# 5. Define method .sides, which returns the length of @labels
# 6. Define method .roll, which returns a random element of @labels (use the .sample method to do so)


# 3. Initial Solution

# class Die
#   def initialize(labels)
#     raise ArgumentError, "Error. You didn't pass anything in." if labels.empty?
#     @labels = labels
#   end

#   def sides
#     @labels.length
#   end

#   def roll
#     @labels.sample
#   end
# end



# 4. Refactored Solution

class Die
  def initialize(labels)
    raise ArgumentError, "Error. You didn't pass anything in." if labels.empty?
    @labels = labels
  end

  def sides
    @labels.length
  end

  def roll
    @labels.sample
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE

print "Test 1: Returns Error for empty array: "
begin
  test_die1 = Die.new()
rescue
  puts "true" 
else
  puts "false"
end

test_die2 = Die.new(["spencer", 25, "chicken", "Saturday", 2.5])

puts "Test 2: .sides returns 5 for an array with 5 elements: #{test_die2.sides == 5}"
puts "Test 3: .roll returns a value that exists in the array: #{["spencer", 25, "chicken", "Saturday", 2.5].include? test_die2.roll}"




# 5. Reflection 

# During this challenge, Andy and I learned how to write test code for ArgumentErrors, and we also learned how to use the .sample method to return a random element from an array. We did not refactor our code because we felt it was as efficient as we could make it in our original solution. We also learned that we could pass in no array OR an empty array to raise the ArgumentError.
