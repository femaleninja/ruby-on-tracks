require_relative 'piece.rb'

class Knight < Piece

  def moves
    KNIGHT_MOVES.reduce([]) do |accumulator, delta|
      pos = add(current_pos, delta)
      accumulator << pos if valid_pos?(pos)
      accumulator
    end
  end

  def to_s
    (color == :white) ? "\u2658" : "\u265E"
  end

  private

  KNIGHT_MOVES = [
    [-2, -1], [-2, 1], [-1, -2], [-1, 2], [1, -2], [1, 2], [2, -1], [2, 1]
  ]

end
