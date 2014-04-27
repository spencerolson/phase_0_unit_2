# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution

class Array
    def pad!(min,optional=nil)
        elements_to_add = min - self.count
        return self if elements_to_add <= 0
        self.concat Array.new(elements_to_add,optional)
        return self
	end
    
    def pad(min,optional=nil)
        new_array = self.clone
        elements_to_add = min - new_array.count
        return new_array if elements_to_add <= 0
        new_array.concat Array.new(elements_to_add,optional)
        return new_array
    end
end



# 3. Refactored Solution



# 4. Reflection 