# frozen_string_literal: true

# Knight
class Knight
  attr_accessor :position

  def initialize(position = [rand(0..7)][rand(0..7)])
    @position = position
    @possible_moves = [[1, 2], [2, 1], [2, -1], [1, -2], [-1, -2], [-2, -1], [-2, 1], [-1, 2]]
  end

  def knight_moves(_origin, _final)
    nil
  end

  def possible_moves(origin = @position)
    unless legal_move?(origin)
      puts('Invalid position.')
      return
    end

    possible_moves = apply_moves(origin)
    legal_moves = possible_moves.select { |move| legal_move?(move) }
    p legal_moves
  end

  def apply_moves(origin)
    @possible_moves.map do |move|
      [move[0] + origin[0], move[1] + origin[1]]
    end
  end

  def legal_move?(move)
    move[0].between?(0, 7) && move[1].between?(0, 7)
  end
end
