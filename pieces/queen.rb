require_relative "piece"
require_relative "slideable"

class Queen < Piece
  include Slideable

  def symbol
    if color == :white
      '♕'
    else
      '♛'
    end
  end

  def move_dir
    HORIZONTAL_VERTICAL + DIAGNAL
  end
end