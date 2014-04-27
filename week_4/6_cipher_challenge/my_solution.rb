# U2.W4: Cipher Challenge


# I worked on this challenge with:  Tim Howard.



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



# def north_korean_cipher(coded_message)
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby 
#                                           # docs. When the split method is called with a delimeter of "", it returns an 
#                                           # array with each element containing a single character from the string.
#                                           # 
#   decoded_sentence = []
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",   #
#             "h" => "d",   # A way we can automate this process is to use an array. We can use the .index function to
#             "i" => "e",   # locate where the letter falls in the standard alphabet order, and then shift that index
#             "j" => "f",   # to the 'left' by 4 indices (using -4). In addition, a benefit to using an array to accomplish
#             "k" => "g",   # this task is that calling array[num] with a negative number will return the element counting from 
#             "l" => "h",   # the end of the array, i.e. array[-4] will return the element 4 positions behind the last element.
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}
            
#   input.each do |x| # What is #each doing here? .each is going through every character of the original coded_message
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? This is set
#                         # to false from the offset because we have not yet found a match between the current character
#                         # and the set of keys in the cipher hash. When this value is true, then the 'if not found_match' 
#                         # statement will NOT run. This means that when the found_match value is true, the value will be converted 
#                         # to some new value; when the found_match value is false, the character will not be converted to a new value.
#     cipher.each_key do |y| # What is #each_key doing here? If the cipher hash contains a key matching the current character, the
#                           # value associated with that character in the cipher hash will be pushed to the decoded_sentence array
#                           #  Otherwise, the code will move on to the elseif branches.
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#         puts "I am comparing x and y. X is #{x} and Y is #{y}."
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here? If a match is found, we don't need to go any further. Thus, we can break.
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
#                                                                                           #If the current character is equal 
#                                                                                           #to @, #, $, %, ^, &, or *, then a blank 
#                                                                                           #space will be pushed to the
#                                                                                           #decoded sentence array.   
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a " do? This returns an array containing
#                                     # the ints 0 through 9
#         decoded_sentence << x
#         found_match = true
#         break
#       end 
#     end
#     if not found_match  # What is this looking for? This code will run if the current character is not in the cipher hash
#                         # and is not an integer 0 through 9.
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
 
#   if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. This will match a sequence of one or more digits
#     decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
#   end  
#   return decoded_sentence # What is this returning? This is returning our converted, decoded message.      
# end

# Your Refactored Solution

def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("")  
                                            
  alphabet = Array ("a".."z")              
                                           
  decoded_sentence = []
            
  input.each do |x| 
    found_match = false  
                         
    alphabet.each do |y| 
      if x == y  
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << alphabet[alphabet.index(y)-4]
        found_match = true
        break  
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" 
        decoded_sentence << " "
        found_match = true
        break
    end
    if not found_match 
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } 
  end  
  return decoded_sentence      
end




# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Reflection
 
