
class Piece
  attr_reader :pos
  def initialize(pos)
    # @color = color
    # @board = board
    @pos = pos # [ 5, 7 ]
  end

  def inspect
    "P"
  end

  def to_s
    "P"
  end 

end