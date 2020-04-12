require_relative "piece"

class Pawn < Piece
  def symbol
    color == :white ? '♙' : '♟'
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