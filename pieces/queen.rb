require_relative "piece"
require_relative "slideable"
require 'colorize'

class Queen < Piece
  include Slideable

  def symbol
    '♛'.colorize(color)
  end

  def move_dir
    HORIZONTAL_VERTICAL + DIAGNAL
  end
end