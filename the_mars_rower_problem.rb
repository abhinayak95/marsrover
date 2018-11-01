require_relative 'rover.rb'
require_relative 'plateau.rb'

plateau1 = Plateau.new(5, 5)
rover1 = Rover.new(3, 3, 'E')
puts rover1.get_current_position()
rover1.give_instructions('MMRMMRMRRM')
puts rover1.get_current_position()
coords = rover1.get_current_position().split(' ')
puts plateau1.is_within_boundaries(coords[0].to_i, coords[1].to_i)

rover2 = Rover.new(1, 2, 'n')
puts rover2.get_current_position()
rover2.give_instructions('LMLMLMLMM')
puts rover2.get_current_position()
coords = rover2.get_current_position().split(' ')
puts plateau1.is_within_boundaries(coords[0].to_i, coords[1].to_i)
