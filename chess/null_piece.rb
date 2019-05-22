require "singleton"
require_relative 'piece.rb'

class NullPiece < Piece
  include Singleton
  def initialize
  end

  def inspect
    "N"
  end
  
  def to_s
    "N"
  end
end