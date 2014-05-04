# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Andy Principe.

# 2. Pseudocode

# Input: 16 digit credit card number
# Output: credit card validation
# Steps: 
# 1. Define class CreditCard
# 2. Within class CreditCard, define method initialize, which takes in credit card number, if not 16 digits, outputs ArgumentError message
# 3. Define check_card method, which returns true if CC number is valid
# 4. Define helper methods: double_every_other_digit (doubles every other digit in input, and returns number), sum_all_digits (takes integer as input and returns the sum of all digits), valid_card_number (takes integer and returns true if that integer is divisible by 10)


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
# class CreditCard
#   def initialize(card_num)
#     raise ArgumentError, "Too many numbers entered" if card_num.to_s.length > 16
#     raise ArgumentError, "Not enough numbers entered" if card_num.to_s.length < 16
#     @card_num = card_num
#   end

#   def check_card
#     valid_card_number?(sum_all_digits(double_every_other_digit))
#   end

#   private
  
#   def double_every_other_digit
#     final_num_string = ""
#     index = 0
#     @card_num.to_s.reverse.split("").each do |string_digit|

#       if index % 2 == 1 

#         puts "current index: #{@card_num.to_s.reverse.split("").index(string_digit)}. doubling #{string_digit} to #{(string_digit.to_i * 2).to_s}"
#         if string_digit.to_i * 2 >= 10
#           (string_digit.to_i * 2).to_s.reverse.each_char{|digit| final_num_string << digit}
#         else  
#           final_num_string << (string_digit.to_i * 2).to_s
#         end

#         puts "current status of final_string: #{final_num_string.reverse}"

#       else
#         puts "current index: #{@card_num.to_s.reverse.split("").index(string_digit)}. not doubling #{string_digit}"
#         final_num_string << string_digit
#         puts "current status of final_string: #{final_num_string.reverse}"

#       end
#       index+= 1

#     end

#     return final_num_string.reverse.to_i

#   end

#   def sum_all_digits(modified_card_num)
#     modified_card_num.to_s.split("").inject(0){|sum_of_digits, digit_string| sum_of_digits+= digit_string.to_i }
#   end

#   def valid_card_number?(card_num_sum)
#     puts "remainder after dividing by 10: #{card_num_sum % 10}"
#     card_num_sum % 10 == 0
#   end

# end



# 4. Refactored Solution

class CreditCard
  def initialize(card_num)
    raise ArgumentError, "Incorrect number of digits entered. Please enter a valid credit card number." if card_num.to_s.length != 16
    @card_num = card_num
  end

  def check_card
    valid_card_number?(sum_all_digits(double_every_other_digit))
  end

  private
  
  def double_every_other_digit
    final_num_string = ""
    @card_num.to_s.reverse.split("").each_with_index do |string_digit, index|
      if index % 2 == 1 
        if string_digit.to_i * 2 >= 10
          (string_digit.to_i * 2).to_s.reverse.each_char{|digit| final_num_string << digit}
        else  
          final_num_string << (string_digit.to_i * 2).to_s
        end
      else
        final_num_string << string_digit
      end
    end
    final_num_string.reverse.to_i
  end

  def sum_all_digits(modified_card_num)
    modified_card_num.to_s.split("").inject(0){|sum_of_digits, digit_string| sum_of_digits+= digit_string.to_i }
  end

  def valid_card_number?(card_num_sum)
    card_num_sum % 10 == 0
  end

end




# 1. DRIVER TESTS GO BELOW THIS LINE

card1 = CreditCard.new(4408041234567893)
puts "Test 1: check_card returns true for a valid credit card number: #{card1.check_card}"

card2 = CreditCard.new(4408041234267883)
puts "Test 2: check_card returns false for a invalid credit card number: #{card2.check_card == false}"

print "Test 3: Raises ArgumentError if there are in incorrect number of digits entered: "
begin 
  card3 = CreditCard.new(440804123426788)
rescue
  puts "true"
else
  puts "false"
end



# 5. Reflection 
# We found this solution to be a much bigger challenge than originally anticipated. As you can see from our solution, we implemented a lot of code to slice/dice/modify the original input in order to meet the criteia set before us in the readme file. We had an especially difficult time dealing with integers, that when multiplied by two resulted in a number with multiple digits (e.g. 6 x 2 = 12). We learned a lot about using private vs public methods and how it makes sense to break the solution out into multiple chunks of code, rather than attacking it all at once. 