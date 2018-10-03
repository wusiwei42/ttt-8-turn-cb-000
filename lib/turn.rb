def turn
end

def ask_user_input
  puts "Welcome to Tic Tac Toe!"
  puts "Where would you like to go?"
  input = gets.input
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
  if position_taken?(board, index) == false
    return true
  elsif position_taken?(board, index) == true
    return false
  elsif position_taken?(board, index) == nil
    return false
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    return false
  elsif board[index] == nil
    return nil
  else
    return true
  end
end

def move(board, index, value = "X")
  board[index] = value
end
