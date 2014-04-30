# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) Spencer Olson
# 2) Ronald Ishak

 # This is the file you should end up editing. 
 
def bakery_num(num_of_people, fav_food)
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} #inventory
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0
  
  has_fave = false

  my_list.each_key do |k|
    if k == fav_food
      has_fave = true
      #fav_food = k
    end
  end
  if has_fave == false #if its not pie cake or cookie
    raise ArgumentError.new("You can't make that food")
  else
    fav_food_qty = my_list.values_at(fav_food)[0] #gets the int instead of array 
  #end
  if num_of_people % fav_food_qty == 0 
    num_of_food = num_of_people / fav_food_qty
    return "You need to make #{num_of_food} #{fav_food}(s)."
  else num_of_people % fav_food_qty != 0
    while num_of_people > 0
      # If dividing the number of people by the favorite food quantity results in a remainder
      # then bake a pie (8), cake (6) or cookie (1).
      if num_of_people / my_list["pie"] > 0
        pie_qty = num_of_people / my_list["pie"]
        num_of_people = num_of_people % my_list["pie"]
      elsif num_of_people / my_list["cake"] > 0
        cake_qty = num_of_people / my_list["cake"]
        num_of_people = num_of_people % my_list["cake"]
      else
        cookie_qty = num_of_people
        num_of_people = 0
      end
    end
    return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
    end
  end
end
 

#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.

# Checking to see how many cakes to bake for 24 people
# Since 6 divides perfectly to 24, it will return how many cakes to make
p bakery_num(24, "cake") == "You need to make 4 cake(s)." 

# Checking to see how many pies to bake for 41 people
# Since 41/8 = 5 cakes plus 1 person without cake 
# 1 person will get a cookie
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."

# Checking to see how many cookies to make for 24 people
# Since 1 cookie = 1 person then 24 cookies
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."

# Checking to see how many pies to make for 4 people
# Because there is not enough people to make a pie (or cake), everyone gets cookies! 
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."

# Checking to see how many pies to make for 130 people
# 130/8 = 16 pies with 2 people getting cookies
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."

# This raises an ArguementError because apples do not exist in the my_list
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
# Checkign to see how many cakes to make for 41 people
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." 
# WHAAAAAT? I thought I said I wanted cake!
# Code is not taking "cake" (fav_food) into the equation, instead going through pie>cake>cookie
 