require_relative "piece"
require_relative "slideable"

class Bishop < Piece
  include Slideable

  def symbol
    color == :white ? ♗ : ♝
  end

  def move_dir
    DIAGNAL
  end
end