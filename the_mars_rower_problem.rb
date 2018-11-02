require_relative 'rover.rb'
require_relative 'plateau.rb'
require_relative 'coordinate.rb'

plateau_coords = Coordinate.new(5, 5)
plateau1 = Plateau.new(plateau_coords)

rover1_coords = Coordinate.new(3, 3)
rover1 = Rover.new(rover1_coords, 'E')
position = rover1.get_position()
puts "#{position[0].x_coord} #{position[0].y_coord} #{position[1]}"
new_position = rover1.move('MMRMMRMRRM')
if plateau1.is_within_boundaries(new_position[0])
  rover1.set_position(new_position[0],new_position[1])
  position = rover1.get_position()
  puts "#{position[0].x_coord} #{position[0].y_coord} #{position[1]}"
else
  puts 'Invalid instructions'
end

rover2_coords = Coordinate.new(1, 2)
rover2 = Rover.new(rover2_coords, 'n')
position = rover2.get_position()
puts "#{position[0].x_coord} #{position[0].y_coord} #{position[1]}"
new_position = rover2.move('LMLMLMLMM')
if plateau1.is_within_boundaries(new_position[0])
  rover2.set_position(new_position[0],new_position[1])
  position = rover2.get_position()
  puts "#{position[0].x_coord} #{position[0].y_coord} #{position[1]}"
else
  puts 'Invalid instructions'
end
