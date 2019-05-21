
require "colorize"
require_relative "board.rb"
require_relative "cursor.rb"

class Display
  @cursor = Cursor.new([0,0], board)
end