require_relative "pieces"
class Board
  attr_reader :grid, :sentinel

  def initialize
    @sentinel = Nullpiece.instance
    @grid = Array.new(8){Array.new(8, @sentinel)}
  end

  def [](pos)
    x, y = pos
    grid[x][y]
  end

  def []=(pos, val)
    x, y = pos
    grid[x][y] = val
  end

  def move_piece(color, start_pos, end_pos)
    raise "there is nothing here" if self[start_pos] == @sentinel

    start_piece = self[start_pos]
    end_piece = self[end_pos]
    # if start_piece.color != color
    #   raise "wrong color"
    if end_piece != @sentinel
      raise "the spot is already occupied"
    end

    self[end_pos] = start_piece
    self[start_pos] = @sentinel
    
    # end_piece.pos = end_pos
  end

  def set_up_board
    (0..7).each do |i|
      
      grid[0][i] = Piece.new
      grid[1][i] = Piece.new
      grid[6][i] = Piece.new
      grid[7][i] = Piece.new 
    end
    
  end
  
end