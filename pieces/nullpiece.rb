require "singleton"
require_relative "piece"

class Nullpiece < Piece
  attr_reader :symbol
  include Singleton
  def initialize
    @color = :none
    @symbol = " "
  end
end