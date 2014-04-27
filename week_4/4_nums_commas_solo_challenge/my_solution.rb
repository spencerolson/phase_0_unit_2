# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution

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
        
        return num_with_commas.reverse
    end    
end


# 3. Refactored Solution



# 4. Reflection 