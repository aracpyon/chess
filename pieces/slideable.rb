require "byebug"
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
    [1, -1],
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
    pos_x, pos_y = pos
    new_pos = [pos_x + dx, pos_y + dy]

    while board.valid_pos?(new_pos)
      if board.empty?(new_pos)
        moves << new_pos
      
        pos_x, pos_y = new_pos
        new_pos = [pos_x + dx, pos_y + dy]
      else
        moves << new_pos if board[new_pos].color != color
        break
      end
    end
    
    # debugger
    moves
  end

end