# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input? An integer number
# What is the output? (i.e. What should the code return?) a String version of the number with commas
# What are the steps needed to solve the problem?
# 1. Convert the input number to a String
# 2. If the input number is less than 1000, return a String version of that same number
# 3. If the input number is greater than or equal to 1000, add commas in the appropriate spots and return a String version of the number.



# 2. Initial Solution

# def separate_comma (int_num)
#     if int_num.to_s.length <=3 then
#         return int_num.to_s 
#     else
        
#         num_with_commas = ""
#         current_digit_index = 0
#         int_num.to_s.reverse.split("").each do |digit|
#             if  current_digit_index != 0 && current_digit_index % 3 == 0
#                 num_with_commas << ","
#             end
#             num_with_commas << digit
#             current_digit_index += 1
#         end
        
#         return num_with_commas.reverse
#     end    
# end


# 3. Refactored Solution

def separate_comma (int_num)
    if int_num.to_s.length <=3 then
        return int_num.to_s 
    else
        
        num_with_commas = ""
        current_digit_index = 0
        int_num.to_s.reverse.split("").each do |digit|
            if  current_digit_index != 0 && current_digit_index % 3 == 0
                num_with_commas << ","
            end
            num_with_commas << digit
            current_digit_index += 1
        end
        
        num_with_commas.reverse
    end    
end
# My refactored solution is nearly the same as the above code in the initial solution because I refactored on-the-fly. The one change I did make in this section was to get rid of the second 'return' statement, since Ruby will return that value anyways if it's the last thing that's evaluated.
# 4. Reflection 

# I liked this challenge because I took a good amount of creativity on my part to come up with a solution. I think the biggest 'aha' moment that I has was when I realized I could reverse the string and go through it left to right, instead of trying to figure out a way to traverse the string from right to left. I also hit a snag at one point because I was setting num_with_commas to equal an Array instead of a string, and this was causing my returned value to be an array, so it was failing the tests. A quick change from num_with_commas = [] to num_with_commas = "" fixed my problem.