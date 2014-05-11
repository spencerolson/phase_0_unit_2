# U2.W6: Drawer Debugger


# I worked on this challenge by myself.


# 2. Original Code

class Drawer

    attr_reader :contents

  # Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end 

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.last) #what is `#pop` doing? removes the last element of the array and returns it, OR returns nil if the array is empty.
    puts "the drawer contains the item passed in: #{@contents.include? item}."
      @contents.delete(item) 
  end

  def dump  # what should this method return?
    @contents.clear
    puts "Your drawer is empty."
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
  end
end

class Silverware
  attr_reader :type

# Are there any more methods needed in this class?

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  def clean_silverware
    puts "cleaning the #{type}"
    @clean = true
  end

  def clean
    @clean
  end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?

fork = Silverware.new("fork")
silverware_drawer.add_item(fork)
silverware_drawer.view_contents
fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
puts "Value: #{fork}, Type: #{fork.class}"
fork.eat

puts fork.clean

fork.clean_silverware
puts fork.clean

spork = Silverware.new("spork")
silverware_drawer.add_item(spork)
silverware_drawer.view_contents
silverware_drawer.remove_item

# DRIVER TESTS GO BELOW THIS LINE

def assert
  raise message unless yield
end

knife1.eat

assert{knife1.clean == false}

knife1.clean_silverware
assert{knife1.clean == true}

silverware_drawer.dump 
assert {silverware_drawer.remove_item == nil}




# 5. Reflection 
#In this challenge, I got some experience with debugging and interpreting error messages. Sometimes the error messages can be misleading and it's difficult to determine what is really going on. I found that adding puts statements in the code helps immensely to track how variables and methods are acting as the code runs. I also learned some new methods, such as .clear and .delete.