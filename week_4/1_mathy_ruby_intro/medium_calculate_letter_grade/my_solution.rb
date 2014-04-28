# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with: Andy Principe.

# 1. Pseudocode

# What is the input? An Array of test scores
# What is the output? (i.e. What should the code return?) The letter grade that corresponds with the average test score
# What are the steps needed to solve the problem?
# 1. Find the average test score
# 2. Assign the proper letter grade based on the average score
# 3. Return the letter grade


# 2. Initial Solution

# def get_grade(test_scores)
#     sum = 0.0
#     test_scores.each {|score| sum += score}
#     avg = sum / test_scores.length

#     case avg
#     when 90..100
#         return "A"
#     when 80...90
#         return "B" 
#     when 70...80
#         return "C"
#     when 60...70
#         return "D"
#     else
#         return "F"
#     end
# end


# 3. Refactored Solution

def get_grade(test_scores)
    sum = 0.0
    test_scores.each {|score| sum += score}
    
    case sum / test_scores.length
    when 90..100
        return "A"
    when 80...90
        return "B" 
    when 70...80
        return "C"
    when 60...70
        return "D"
    else
        return "F"
    end
end


# 4. Reflection 

# This exercise, like the Add It Up exercise, was a good 'refresher' for Ruby. I think the biggest roadblock that I hit during this exercise was that I initially forgot to set my sum equal to a float, as opposed to an integer. This caused my average to be innacurate because I was inadvertently doing integer division, instead of float division. I was able to fix this problem by assigning sum to 0.0 instead of 0. I also was able to solidify my knowledge of case statements when doing this challenge, which was good.