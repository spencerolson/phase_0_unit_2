# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with: Andy Principe.

# 1. Pseudocode

# What is the input? an integer specifying the minimum size and an optional pad value.
# What is the output? (i.e. What should the code return?) A new array, padded with the pad value up to the minimum size.
# What are the steps needed to solve the problem?
# 1. Determine whether the array needs to be expanded or not by comparing its length to the minimum size.
# 2. If the array needs to be expanded, add as many elements as needed with the optional pad value
# 3. Return the resulting array


# 2. Initial Solution

# class Array
#     def pad!(min,optional=nil)
#         elements_to_add = min - self.count
#         return self if elements_to_add <= 0
#         self.concat Array.new(elements_to_add,optional)
#         return self
# 	end
    
#     def pad(min,optional=nil)
#         new_array = self.clone
#         elements_to_add = min - new_array.count
#         return new_array if elements_to_add <= 0
#         new_array.concat Array.new(elements_to_add,optional)
#         return new_array
#     end
# end



# 3. Refactored Solution
class Array
    def pad!(min,optional=nil)
        elements_to_add = min - self.count
        return self if elements_to_add <= 0
        self.concat Array.new(elements_to_add,optional)
        self #removed the return keyword
    end
    
    def pad(min,optional=nil)
        new_array = self.clone
        elements_to_add = min - new_array.count
        return new_array if elements_to_add <= 0
        new_array.concat Array.new(elements_to_add,optional)
        new_array #removed the return keyword
    end
end

# Since I did most of my refactoring on-the-fly, the code in this section is very similar to the code in my intial solution section. However, I did remove the unnecessary return keywords in the code above.
# 4. Reflection 

# This challenge helped me and Andy better understand how you can modify the actual object, or just modify a copy of it. I learned about using the Array.new method with the second parameter to specify the default value; I did not know you could do that. We did not hit too many snags on this challenge. We struggled for a bit on the pad method until we discovered the .clone method, which made the problem much easier to solve. We also used Codecademy Labs to write some test code and run our methods live to see what type of return values we were getting, and ensure we were modifying the underlying variable when we wanted to and weren't modifying it when we didn't want to.