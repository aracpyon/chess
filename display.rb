require_relative "cursor"
require_relative "board"
require "colorize"

class Display
  attr_reader :board, :cursor
  def initialize(board)
    @board = board
    @cursor = Cursor.new([0, 0], board)
  end

  def build_grid
    board.grid.map.with_index do |row, x|
      row.map.with_index do |piece, y|
        if (x + y).even?  
          piece.to_s.colorize(:background => :light_blue)
        else
          piece.to_s.colorize(:background => :blue)
        end
      end
    end
  end

  def render
    system("clear")
    puts "Arrow keys, WASD, or vim to move, space or enter to confirm."
    build_grid.each { |row| puts row.join }
  end
end

b = Board.new
d = Display.new(b)
d.render