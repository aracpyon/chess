require_relative "pieces"
require 'byebug'
class Board
  attr_reader :grid, :sentinel

  def initialize
    @sentinel = Nullpiece.instance
    @grid = Array.new(8){Array.new(8, @sentinel)}

    set_up_board
  end

  def [](pos)
    x, y = pos
    grid[x][y]
  end

  def []=(pos, val)
    x, y = pos
    grid[x][y] = val
  end

  def empty?(pos)
    self[pos].empty?
  end

  def valid_pos?(pos)
    pos.all?{|i| i.between?(0, 7)} 
  end

  def add_piece(pos, piece)
    self[pos] = piece
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
    
    end_piece.pos = end_pos
  end

  def set_up_board
    (0..7).each do |i|
      
      grid[0][i] = Piece.new(:white, self, [0,i])
      grid[1][i] = Piece.new(:white, self, [1,i])
      grid[6][i] = Piece.new(:black, self, [6,i])
      grid[7][i] = Piece.new(:black, self, [7,i]) 
    end
    
  end
  
end

if $PROGRAM_NAME == __FILE__
  b = Board.new
  q = Queen.new(:white, b, [3,3])
  p q.moves
  knight = Knight.new(:black, b, [2,5])
  p knight.moves
  
end