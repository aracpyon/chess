require "singleton"
require_relative "piece"

class Nullpiece < Piece
  include Singleton
  def initialize
    @color = :none
    @symbol = " "
  end
end