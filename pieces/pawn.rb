require_relative "piece"
require 'colorize'

class Pawn < Piece
  def symbol
    '♟'.colorize(color)
  end

  def at_start_row?
  end

  def forward_dir
    color == :white ? -1 : 1
  end

  def forward_steps
  end

  def side_attacks
  end
end