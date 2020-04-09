require_relative "piece"
require_relative "slideable"

class Rook < Piece
  include Slideable

  def symbol
    color == :white ? ♖ : ♜
  end

  def move_dir
    HORIZONTAL_VERTICAL
  end
end