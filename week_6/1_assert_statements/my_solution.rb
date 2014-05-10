# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# 1. The function assert is called with a block: name == 'bettysue'
# 2. When the yield statement is reached in the function, the block is evaluated (name == 'bettysue'). Since the block evaluates to true, nothing is raised.
# 3.The function assert is called with a block: name == 'billybob'
# 4. When the yield statement is reached in the function, the block is evaluated (name == 'billybob'). Since the block evaluates to false, the 'Assertion failed!' statement is raised.


# 3. Copy your selected challenge here
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



# 4. Convert your driver test code from that challenge into Assert Statements
def assert
  raise "Assertion failed" unless yield
end

assert{
  begin
    guess_game1 = GuessingGame.new("a")
  rescue
    true
  else
    false
  end
}

guess_game2 = GuessingGame.new(5)

assert{guess_game2.guess(3) == :low}
assert{guess_game2.guess(7) == :high}
assert{guess_game2.guess(5) == :correct}


assert{
  begin
    guess_game2.guess("a")
  rescue
    true
  else
    false
  end
}

assert {
  guess_game2.guess(5)
  guess_game2.solved?
}

guess_game2.guess(4)
assert{guess_game2.solved? == false}





# 5. Reflection

# I still don't have a great grasp on assert statements or why they're needed. I did a bit of research to try to figure out why it's a better option to use assert statements vs. just puts-ing a true or false value, but it's still not crystal clear to me. I suspect that using assertions will make my code more D.R.Y., but for now they make it more difficult for me to do TDD. I'm sure there's an option to puts something to the terminal when a test DOES pass with assert statements, but for now I don't like the fact that nothing is puts-ed when a test does pass. I'm sure I still have a lot to learn when it comes to asserts!
