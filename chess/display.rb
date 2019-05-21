
require "colorize"
require_relative "board.rb"
require_relative "cursor.rb"

class Display

  def initialize
    @board = Board.new()
    @cursor = Cursor.new([0,0], @board)
  end

  def render  # display the board on a screen

    black_square = "  ".colorize(:background => :black)
    white_square = "  ".colorize(:background => :white)
    
    even_row_pair = white_square + black_square
    odd_row_pair = black_square + white_square

    (0..7).each do |row|
      if row.zero? || row.even?
        puts even_row_pair * 4
      else  
        puts odd_row_pair * 4
      end
    end
    
  end

  # new method player
    # loop
      # render
      # get cursor
      # update cursor

end