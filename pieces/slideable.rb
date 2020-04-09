module Slideable
  HORIZONTAL_VERTICAL = [
    [1,0],
    [-1,0],
    [0, 1],
    [0, -1]
  ]

  DIAGNAL = [
    [1, 1],
    [-1, 1],
    [1, -1].
    [-1, -1]
  ]


  def moves
    moves = []
    move_dir.each do |(dx, dy)|
      moves.concat(grow_moves(dx,dy))
    end
    moves
  end

  def grow_moves(dx, dy)
    moves = []
    new_pos = pos.dup
    until board.valid_pos?(new_pos)
      pos_x, pos_y = new_pos
      new_pos = [pos_x + dx, pos_y + dy]
      moves << new_pos
    end

    piece = board[new_pos]
    moves << piece.pos if piece.color != color

    moves
  end

end