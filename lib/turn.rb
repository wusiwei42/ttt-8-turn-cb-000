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

def valid_move?(board, user_input)
  if user_input > 9
    return false
  else user_input == nil
    return false
  else
    return true
  end
end

def move(board, index, value = "X")
  board[index] = value
end
