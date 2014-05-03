# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge with: Spencer Olson.

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# 1. define method "create_word", pass in 2+, the board and as many coordinates as you want
# 2. For each coordinate provided, find that location on the board provided, get letter at that location
# 3. Join all letters (from coordinates) together
# 4. Return the word spelled by coordinates 

# Initial Solution

#def create_word(board, *coords) 
#	coords.map { |coord| board[coord.first][coord.last]}.join("") 
#end

# Refactored Solution
def create_word(board, *coords) 
	coords.map { |coord| board[coord.first][coord.last]}.join("") 
end

# DRIVER TESTS GO BELOW THIS LINE
puts "create_word returns late: #{create_word(boggle_board,[2,2],[3,1],[3,0],[2,0]) == "late"}"

# Reflection 
# The code was already provided for us, this was a good exercise for practicing our pseudocode abilities. We researched what the asterisk meant and found out it allows you to enter as many parameters into the method.

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# 1. define method get_row, which takes 2 parameters: board and row_num
# 2. return row_num for the board provided

# Initial Solution
#def get_row(board, row_num)
#	board[row_num]
#end

# Refactored Solution
def get_row(board, row_num)
	board[row_num]
end

# DRIVER TESTS GO BELOW THIS LINE
puts "get_row returns [\"b\",\"r\",\"a\",\"e\"]: #{get_row(boggle_board,0) == ["b","r","a","e"]}" 

# Reflection 
# While the method implementation was pretty simple for this problem, we learned a good deal about writing driver test code. We had a roadblock and figured out that we needed to escape the quotes in the test.


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# 1. define get_col, which takes 2 parameters: board and col_num
# 2. create blank array called col (that will hold final column array)
# 3. Iterate through each index of board parameter, pushing col_num in each row to col variable defined in step 2
# 4. return col array

# Initial Solution
#def get_col(board, col_num)
#	col = []
#	board.each{|row| col.push(row[col_num])}
#	return col
#end

# Refactored Solution
def get_col(board, col_num)
    board.inject([]){|col_array,row| col_array.push(row[col_num])}    
end

# DRIVER TESTS GO BELOW THIS LINE
puts "get_col returns [\"a\",\"d\",\"l\",\"k\"]: #{get_col(boggle_board,2) == ["a","d","l","k"]}" 

# Reflection 
# We arrived at our initial solution fairly quickly, but knew it could be done much better since it was unnecessary to create a dummy value (col) to hold the array, while we were putting it together. After some research, we found we could use the inject method to avoid having to use a dummy variable. 