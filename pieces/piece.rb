class Piece

  attr_reader :color, :board
  attr_accessor :pos

  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos

    board.add_piece(pos, self)
  end

  def empty?
    color == :none ? true : false
  end

  def to_s
    " #{symbol} "
  end
  
end