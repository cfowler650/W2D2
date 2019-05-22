require_relative "null_piece.rb"

class Board

  def initialize
    @grid = Array.new(8) { Array.new(8) }
    @singleton = NullPiece.instance
    create_board
    # puts @grid

  end

  def create_board
    #empty spots
    (2..5).each do |row|
      (0..7).each do |col|
        @grid[row][col] = @singleton
      end
    end
    
    #black pieces 
    (0..1).each do |row|
      (0..7).each do |col|
        @grid[row][col] = Piece.new([row,col])
      end 
    end 
     
    #white pieces
    (6..7).each do |row|
      (0..7).each do |col|
        @grid[row][col] = Piece.new([row,col])
      end 
    end 
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @grid[row][col] = val
  end

  def move_piece(start_pos, end_pos)
    begin
      if @grid[start_pos].class == NullPiece || @grid[end_pos].class == Piece
        raise StandardError
      end
    rescue StandardError => exception
      puts "Try different positions"
      # retry
    end
  end

  def valid_pos?(diff, cursor_pos) # diff = [0, -1]  // cursor_pos = [7, 0]
    diff_1, diff_2 = diff
    curs_1, curs_2 = cursor_pos

    new_row = diff_1 + curs_1 # 7
    new_col = diff_2 + curs_2 # -1

    # check new_row and new_col that they are between 0 and 7
    (0..7).to_a.include?(new_row) && (0..7).to_a.include?(new_col)
  end

  def our_method
    # loop
      cursor.get_input
      Display.render
    # loop 
  end
end
