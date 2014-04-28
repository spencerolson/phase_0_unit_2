# U2.W4: Review and Refactor: Pad an Array

# I worked on this challenge by myself



# 1. First Person's solution I liked: Ben Brostoff
#    What I learned from this solution: I learned the differences (or lack of differences) between Array#size, Array#length, and Array#count. I was using Array#count in my solution, but this was unnecessary because Array#length is more 'lightweight' but accomplishes the same task I needed done. As such, I'll use .length in my final solution isntead of .count

# Copy solution here:

# class Array #extend class
#       def pad(l, output = nil) #setting output to nil makes second arg optional
#           amount = l - self.length
#           copy = self.dup #make non-destructive via duplication
#           amount.times{copy.push(output)} 
#           return copy
#         end
#        def pad!(l, output = nil)
#        	amount = l - self.length
#           amount.times{self.push(output)} #value of self is permanently changed
#           return self
#           end

# end



# 2. Second Person's solution I liked: Colin Trent
#    What I learned from this solution: It looks like using length on its own (without self precding it) will automatically call self.length. Cool! I did not know that. I also really like how D.R.Y. this code is; instead of repeating a lot of his code in the pad method, he instead calls the pad! method within the pad method; really nice, succinct, and easy to read. Finally, I like the use of the while loop.
# Copy solution here:

# class Array
# 	def pad!(expected_length, value=nil)
# 	  while expected_length > length
# 	  	self << value
# 	  end
# 	  self
# 	end

# 	def pad(expected_length, value=nil)
# 	  self.clone.pad!(expected_length, value)
# 	end

# end



# 3. My original solution:

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

# 4. My refactored solution:

class Array
    def pad!(min,optional=nil)
        while min > length #added while statement and did not use the word self when calling .length
        	self << optional
        end
        self #removed the return keyword since ruby will return the last thing it evaluates
		end
    
    def pad(min,optional=nil)
        self.clone.pad!(min, optional) #made my code DRY by calling the pad! method instead of repeating a bunch of the same code
    end
end


# 5. Reflection