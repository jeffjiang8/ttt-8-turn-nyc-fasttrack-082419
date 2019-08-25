#display_board
def display_board
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
  puts "-----------" 
  puts "   |   |   "
  return "A Tic Toc Toe Board"
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------" 
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

board = [" "," "," "," "," "," "," "," "," "]
display_board(board)

#position_taken & valid_move
def position_taken?(board, index)
 if board[index] == nil || board[index] == ""
    return false
 elsif board[index] == " "
    return false
 elsif board[index] == "X" || board[index] == "O"
    return true
 end
end

def valid_move?(board,index)
  if board[index] == nil 
    return false 
    elsif !position_taken?(board, index)
    return true 
  end
end

#move 
def input_to_index(input)
  input.to_i - 1
end

def move(board,position,char = 'X')
  board[position] = char
end 

#turn 
def turn(position)
  puts "Please enter 1-9: "
  position = position.strip
end




