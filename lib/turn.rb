def turn(board)
  puts "Please enter 1-9:"
  
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  converted_input = user_input.to_i - 1
  return converted_input
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index > 0 && index < 9
    return true
  elsif position_taken?(board, index) == true
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    return false
  else
    return true
  end
end

def move(board, index, value = "X")
  board[index] = value
end
