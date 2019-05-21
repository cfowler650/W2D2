require_relative "null_piece.rb"

class Board

  def initialize
    @grid = Array.new(8) { Array.new(8) }
    create_board
    puts @grid
  end

  def create_board
    #empty spots
    (2..5).each do |row|
      (0..7).each do |col|
        @grid[row][col] = NullPiece.new([row, col])
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

  
end
