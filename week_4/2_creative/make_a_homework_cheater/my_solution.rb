# U2.W4: Homework Cheater!


# I worked on this challenge [by myself, with: Andy Principe].

# 2. Pseudocode

# Input: The input will be a famous person and a list of their attributes.
# Output: The output will be a gramatically correct, ready-to-turn-in essay.
# Steps: 
# 1) Define a function titled essay_writer
# 2) Ensure the function takes in a single argument (a hash of the famous person's attributes)
# 3) Insert famous person's attributes into the essay template
# 4) Capitalize first letter of each word in the following attributes: title, name, pet_name. Also, capitalize the first letter of each sentence in the essay.
# 6) Return the finalized essay.



# 3. Initial Solution
def essay_writer (famous_person_hash)

  title = capitalize_every_word(famous_person_hash[:title])
  name = capitalize_every_word(famous_person_hash[:name])
  pronoun = famous_person_hash[:pronoun]
  famous_attribute = famous_person_hash[:famous_attribute]
  famous_date = famous_person_hash[:famous_date]
  favorite_color = famous_person_hash[:favorite_color]
  animal = famous_person_hash[:animal]
  pet_name = capitalize_every_word(famous_person_hash[:pet_name])
  death_date = famous_person_hash[:death_date]


  return capitalize_every_sentence("#{title}\n#{name} was a very important person in history. #{pronoun} is best known for #{famous_attribute} in #{famous_date}. it is a little known fact that #{pronoun} loved the color #{favorite_color}. as a small child, #{name} had a gigantic #{animal} as a pet named #{pet_name}. sadly, #{name} was mauled by #{pet_name} shortly after being recognized for #{famous_attribute}. #{name} died in #{death_date}")

    
end

def capitalize_every_word(sentence)
  sentence.split.map(&:capitalize).join(' ')
end

def capitalize_every_sentence(paragraph_string)
  final_sentence = ""

  paragraph_array = paragraph_string.split(". ")
  paragraph_array.each{|sentence| final_sentence += sentence.slice(0,1).capitalize + sentence.slice(1..-1) + ". "}

  return final_sentence[0..-2]
end




# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE
# {title} "\n"
# {name} was a very important person in history. {pronoun} is best known for {famous_attribute} in {famous_date}. It is a little known fact that {pronoun} loved the color {favorite_color}. As a small child, {name} had a gigantic {animal} as a pet named {pet_name}. Sadly, {name} was mauled by {pet_name} shortly after being recognized for {famous_attribute}. {name} died in {death_date}.

thomas_edison = {
  :title => "the tragic life of thomas edison",
  :name => "thomas edison",
  :pronoun => "he",
  :famous_attribute => "inventing the lightbulb",
  :famous_date => 1808,
  :favorite_color => "periwinkle",
  :animal => "snake",
  :pet_name => "roger",
  :death_date => 1892
}

honey_booboo = {
  :title => "the tragic life of honey boo boo",
  :name => "honey boo boo",
  :pronoun => "she",
  :famous_attribute => "being a child beauty queen",
  :famous_date => 2013,
  :favorite_color => "burnt orange",
  :animal => "walrus",
  :pet_name => "mama june",
  :death_date => 2014
}

carrot_top = {
  :title => "the tragic life of carrot top",
  :name => "carrot top",
  :pronoun => "she",
  :famous_attribute => "being an \'actor\' ",
  :famous_date => 2000,
  :favorite_color => "carrot orange",
  :animal => "wombat",
  :pet_name => "mama june junior",
  :death_date => 2018
}

#test 1
puts "Test 1) essay_writer defined as a method: #{(defined? essay_writer()) == "method"}"

#test 2
puts "Test 2) essay_writer takes one argument: #{method(:essay_writer).arity == 1}"

#test 3
puts "Test 3) essay_writer takes famous person's attributes and inputs them into the essay format correctly: #{essay_writer(thomas_edison).downcase == "the tragic life of thomas edison\nthomas edison was a very important person in history. he is best known for inventing the lightbulb in 1808. it is a little known fact that he loved the color periwinkle. as a small child, thomas edison had a gigantic snake as a pet named roger. sadly, thomas edison was mauled by roger shortly after being recognized for inventing the lightbulb. thomas edison died in 1892."}"

#test 4

puts "Test 4) essay_writer capitalizes every word in the title, name, and pet name of the famous person: #{essay_writer(thomas_edison) == "The Tragic Life Of Thomas Edison\nThomas Edison was a very important person in history. He is best known for inventing the lightbulb in 1808. It is a little known fact that he loved the color periwinkle. As a small child, Thomas Edison had a gigantic snake as a pet named Roger. Sadly, Thomas Edison was mauled by Roger shortly after being recognized for inventing the lightbulb. Thomas Edison died in 1892."}"

puts essay_writer(thomas_edison)

# 5. Reflection 


