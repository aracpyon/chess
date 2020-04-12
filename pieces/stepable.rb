module Stepable
  def moves
    moves = []
    move_diffs.each do |(dx, dy)|
      pos_x, pos_y = pos
      new_pos = [dx+pos_x, dy+pos_y]
      if board[new_pos].empty? || board[new_pos].color != color
        moves << new_pos
      end
    end
    moves
  end

  def move_diffs

  end
end