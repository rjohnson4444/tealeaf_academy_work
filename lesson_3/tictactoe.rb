def display_board
  puts ""
  puts "     |     |"
  puts "     |     |"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "     |     |"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "     |     |"
  puts "     |     |"
  puts ""	
end

def initalize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = ' '}
  new_board
end

board = initalize_board
display_board(board)