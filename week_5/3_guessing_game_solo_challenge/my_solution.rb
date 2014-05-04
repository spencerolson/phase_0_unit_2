# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: .initialize takes an integer answer as input, .guess takes an integer guess as input
# Output: .guess returns a symbol (:low if the guess is less than @answer, :correct if the guess is equal to @answer, and :high if guess is greater than @answer), and .solved? returns a boolean (true if the last guess was correct and false otherwise)
# Steps:
# 1. Create the .initialize method, which takes an Integer answer as a parameter. 
# 2. If the parameter passed in .initalize is not an Integer, raise an ArgumentError. Otherwise, set @answer to answer parameter and set @solved to false.
# 3. Create the .guess method, which takes an Integer guess as a parameter.
# 4. If the parameter passed in .guess is not an Integer, raise an ArgumentError. Otherwise, return :low, :correct, or :high depending on whether the guess is less than, equal to, or greater than @answer.
# 5. If the guess is correct, set @solved to true. Otherwise, set @solved to false.
# 6. Create the .solved? method, which returns the boolean value of the instance variable @solved


# 3. Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#     @solved = false
#   end

#   def guess(guess)
#     case guess
#     when 0...@answer
#       @solved = false
#       :low
#     when @answer
#       @solved = true
#       :correct
#     when (@answer+1)..(1.0/0.0)
#       @solved = false
#       :high
#     end
#   end

#   def solved?
#     @solved
#   end
# end

# 4. Refactored Solution

class GuessingGame
  def initialize(answer)
    raise ArgumentError, "You didn't enter an integer. Please enter an integer." if !answer.is_a? Integer 
    @answer = answer
    @solved = false
  end

  def guess(guess)
    raise ArgumentError, "You didn't enter an integer. Please enter an integer." if !guess.is_a? Integer 
    case guess
    when 0...@answer
      @solved = false
      :low
    when @answer
      @solved = true
      :correct
    when (@answer+1)..(1.0/0.0)
      @solved = false
      :high
    end
  end

  def solved?
    @solved
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE
print "Test 1: .initialize raises an ArgumentError if an Integer is not passed in: "
begin
  guess_game1 = GuessingGame.new("a")
rescue
  puts "true"
else
  puts "false"
end

guess_game2 = GuessingGame.new(5)
puts "Test 2: .guess returns :low when the guess is less than @answer: #{guess_game2.guess(3) == :low}"

puts "Test 3: .guess returns :high when the guess is greater than @answer: #{guess_game2.guess(7) == :high}"

puts "Test 4: .guess returns :correct when the guess is equal to @answer: #{guess_game2.guess(5) == :correct}"

print "Test 5: .guess raises an ArgumentError if an Integer is not passed in: "
begin
  guess_game2.guess("a")
rescue
  puts "true"
else
  puts "false"
end

guess_game2.guess(5)
puts "Test 6: .solved? returns true if the last guess was correct: #{guess_game2.solved?}"

guess_game2.guess(4)
puts "Test 7: .solved? returns false if the last guess was incorrect: #{guess_game2.solved? == false}"


# 5. Reflection 
# In this challenge, I learned about the .is_a? method, which can be used to check if an argument passed in is of the type you are expecting. For instance, I used answer.is_a? Integer to check whether or not the answer passed in is an Integer, as expected. I also solidified my knowledge of raising and testing Errors. To raise Errors, you use the raise keyword; to test for Errors, you can use a begin-rescue-else-end statement.
