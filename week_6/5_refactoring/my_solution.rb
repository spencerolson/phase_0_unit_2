# U2.W6: Refactoring for Code Readability


# I worked on this challenge by myself.


# Original Solution
# class CreditCard
# 	#checks to see if the card_num is 16 digits. If not, raises an ArgumentError. Otherwise, set instance variable @card_num to the number passed in
#   def initialize(card_num)
#     raise ArgumentError, "Incorrect number of digits entered. Please enter a valid credit card number." if card_num.to_s.length != 16
#     @card_num = card_num
#   end

#   #return true if the card_num is a valid carder number, false otherwise.
#   def check_card
#     valid_card_number?(sum_all_digits(double_every_other_digit))
#   end

#   #all methods below here are private since they are helper methods used by the check_card method
#   private
  
#   #doubles every other digit in the card_num. It accomplishes this by converting the card_num to a string, reversing it, and then splitting each character into its own indice in an array. Then, each indice of the array is converted to an int and doubled if the indice is odd, or otherwise left alone. Then the entire string is re-reversed and converted back to an integer, and returned.
#   def double_every_other_digit
#     final_num_string = ""
#     @card_num.to_s.reverse.split("").each_with_index do |string_digit, index|
#       if index % 2 == 1 
#         if string_digit.to_i * 2 >= 10
#           (string_digit.to_i * 2).to_s.reverse.each_char{|digit| final_num_string << digit}
#         else  
#           final_num_string << (string_digit.to_i * 2).to_s
#         end
#       else
#         final_num_string << string_digit
#       end
#     end
#     final_num_string.reverse.to_i
#   end

#   #sums up all digits of a number passsed in. Converts the number passed in to a String and then splits that String into an array with each character in its own indice. Then, each character in each indice is converted to an integer and added to the final sum.
#   def sum_all_digits(modified_card_num)
#     modified_card_num.to_s.split("").inject(0){|sum_of_digits, digit_string| sum_of_digits+= digit_string.to_i }
#   end

#   #checks if a number passed in is a valid card number by checking if the number is evenly divisible by 10.
#   def valid_card_number?(card_num_sum)
#     card_num_sum % 10 == 0
#   end

# end

# Refactored Solution

class CreditCard
  def initialize(card_num)
    raise ArgumentError, "Incorrect number of digits entered. Please enter a valid credit card number." if card_num.to_s.length != 16
    @card_num = card_num.to_s.chars.map(&:to_i) #Instead of storing the card_num as an integer like I did in my original solution, I store it in an array, with each digit as its own element.
  end

  def check_card
    @card_num.each_index{|digit_index| @card_num[digit_index] *=2 if digit_index % 2 == 0}#double the value of each digit that is in an even indice.
    @card_num = @card_num.join('').chars.map(&:to_i) #puts each individual digit in its own indice, e.g. if the array was [4,12,3] after doubling each even indice, it is now [4,1,2,3]. We need to do this so we can add each digit up in the next step.
    @card_num.inject(:+) % 10 == 0 #adds up each digit and checks to see if the sum is evenly divisible by 10.
  end
end

# DRIVER TESTS GO BELOW THIS LINE

def assert
	raise "Assertion failed!" unless yield
end


card1 = CreditCard.new(4408041234567893)
assert{card1.check_card}

card2 = CreditCard.new(4408041234267883)
assert{card2.check_card == false}

assert{
	begin 
	  card3 = CreditCard.new(440804123426788)
	rescue
	  true
	else
	  false
	end
}




# Reflection 
# I was able to SUBSTANTIALLY simplify and refactor my original code. I think the thing that made the biggest change in the refactoring process was treating the card number that was passed in as an array (NOT as an integer, as I originally had). I also learned how to simplify my code using Symbol to_proc conversion. By cutting down the amount of code I needed, I also found that I no longer needed 3 helper methods; in fact my refactored solution has no helper methods because I didn't feel that they were necessary anymore. Fun stuff!