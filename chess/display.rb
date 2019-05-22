
require "colorize"
require_relative "board.rb"
require_relative "cursor.rb"

class Display

  def initialize
    @board = Board.new()
    @cursor = Cursor.new([0,0], @board)
  end

  def render  # display the board on a screen

    (0..7).each do |row|
      cur_row = ''
      (0..7).each do |col|
        cur = @board[[row, col]]
        if @cursor.cursor_pos == [row, col]    
           cur_row += cur.to_s.colorize(:color => :red) + " | "
        else     
           cur_row += cur.to_s + " | "
        end

      end 
      puts '------------------------------'
      puts cur_row
    end 

  end

  # new method player
  def player_method
 
      while true
        render
        # update cursor
        @cursor.get_input
        system("clear")
      end
  end

end

nd = Display.new
nd.player_method