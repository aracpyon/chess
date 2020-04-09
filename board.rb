require_relative "pieces"
class Board
  attr_reader :rows
  def initialize
    @rows = Array.new(8){Array.new(8)}
  end

  def [](pos)
    x, y = pos
    rows[x][y]
  end

  def []=(pos, val)
    x, y = pos
    @rows[x][y] = val
  end

  def move_piece(color, start_pos, end_pos)
    raise "there is nothing here" if self[start_pos] == nil

    piece = self[start_pos]
    if peice.color != color
      
    end

    self[end_pos] = piece
    #
    piece.pos = end_pos
  end

  def move_piece!(start_pos, end_pos)

  end
end