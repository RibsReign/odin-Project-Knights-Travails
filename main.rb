# frozen_string_literal: true

require_relative 'libs/knight'
knight = Knight.new

knight.possible_moves([0, 0])
knight.possible_moves([-4, 4])
knight.possible_moves([3, 4])
