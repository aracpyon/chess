require_relative "piece"
require_relative "slideable"
require 'colorize'
class Bishop < Piece
  include Slideable

  def symbol
    '♝'.colorize(color)
  end

  def move_dir
    DIAGNAL
  end
end