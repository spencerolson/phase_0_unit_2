# U2.W6: Create a BoggleBoard Class


# I worked on this challenge with: Andy Principe.


# 2. Pseudocode

# 1. Paste in code from last week into BoggleBoard class
# 2. Take code from last week and incorporate it into a class
# 3. Create initialize method
# 4. Create create_word method
# 5. Write assert statments for driver/test code


# 3. Initial Solution
# class BoggleBoard

# 	def initialize(board)
# 		@board = board
# 	end
 
# 	def create_word(board, *coords) 
# 		coords.map { |coord| board[coord.first][coord.last]}.join("") 
# 	end

# 	def get_row(board, row_num)
# 		board[row_num]
# 	end

# 	def get_col(board, col_num)
# 		board.inject([]){|col_array,row| col_array.push(row[col_num])}    
# 	end
# end
  
# dice_grid = [["b", "r", "a", "e"],
#              ["i", "o", "d", "t"],
#              ["e", "c", "l", "r"],
#              ["t", "a", "k", "e"]]
 
# boggle_board = BoggleBoard.new(dice_grid)
 


# 4. Refactored Solution

class BoggleBoard

	def initialize(board)
		@board = board
	end
 
	def create_word(*coord) 
		coord.map { |coord| @board[coord.first][coord.last]}.join("") 
	end

	def get_row(row_num)
		@board[row_num]
	end

	def get_col(col_num)
		@board.inject([]){|col_array,row| col_array.push(row[col_num])}    
	end
end
  
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)



# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
	raise "Assertion Failed" unless yield
end

# create driver test code to retrieve a value at a coordinate here:

assert {boggle_board.get_row(3)[2] == "k"}

# implement tests for each of the methods here:

assert {boggle_board.create_word([1,2],[1,1],[2,1],[3,2]) == "dock"} #should return "dock"
assert {boggle_board.get_row(0) == ["b","r","a","e"]}
assert {boggle_board.get_col(0) == ["b","i","e","t"]}

# 5. Reflection 
# This challenge was helpful in learning how to create methods within a class from already existing functions. There wasn't much to do here, outside of adding an initialize method and writing some assert statements to test the code. In the refactoring of our code, we were able to take out board from the individual input parameters and instead reference the @board instance variable. 