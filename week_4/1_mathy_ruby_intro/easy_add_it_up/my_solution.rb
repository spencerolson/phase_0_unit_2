# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# 	The expected input is an array of numbers.
# What is the output? (i.e. What should the code return?)
# 	The expected output is the sum of all numbers in the array.
# What are the steps needed to solve the problem?
# 	1. Create a method called 'total'
# 	2. Make sure your method takes an input
# 	3. Give the sum of all numbers
# 	4. Create a method called 'sentence_maker'
# 	5. Make sure the 'sentence_maker' method takes an input
# 	6.


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
	sumArray.each{ |num| sum += num}

	sum
end

def sentence_maker(sentenceArray)
	sentenceArray.join(" ").capitalize + "."
end


# 4. Reflection 