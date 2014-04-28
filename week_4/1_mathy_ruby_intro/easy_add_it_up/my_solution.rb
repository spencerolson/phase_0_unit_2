# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with: Tim Howard

# 1. Pseudocode

# What is the input?
# 	The expected input is an array of numbers.
# What is the output? (i.e. What should the code return?)
# 	The expected output is the sum of all numbers in the array.
# What are the steps needed to solve the problem?
# 	1. Create a method called 'total'
# 	2. Make sure your method takes an input
# 	3. Return the sum of all numbers
# 	4. Create a method called 'sentence_maker'
# 	5. Make sure the 'sentence_maker' method takes an input
#   6. Properly format the sentence
#   7. Return the sentence
# 	


# 2. Initial Solution

# def total(array)
# 	sum = 0
# 	array.each{ |num| sum += num}

# 	return sum
# end

# def sentence_maker(array)
# 	array.join(" ").capitalize + "."
# end



# 3. Refactored Solution

def total(sumArray)
	sum = 0
	sumArray.each{|num| sum += num}
	sum
end

def sentence_maker(sentenceArray)
	sentenceArray.join(" ").capitalize + "."
end


# 4. Reflection 

# This was a good first exercise to get me back into the swing of things with Ruby. 
# With so much HTML, CSS, and JavaScript in the last weeks, I needed to brush up on
# my Ruby syntax. I found once I 'got in my groove' though, that a lot of my Ruby knowledge
# starting coming back. I also really liked using RSpec to build my code test-by-test. This 
# makes the process of tackling a big problem much easier, since you solve many micro-problems
# that add up to your end-goal. In this exercise, I re-visited the .each method, which I already
# knew but had forgotten the syntax for, and I also learned about the .join method, and how to 
# add a delimeter to a string. Good stuff!