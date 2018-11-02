require_relative 'rover.rb'
require_relative 'plateau.rb'
require_relative 'coordinate.rb'

plateau1 = Plateau.new(Coordinate.new(5, 5))

rover1 = Rover.new(Coordinate.new(3, 3), 'E')
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

rover2 = Rover.new(Coordinate.new(1, 2), 'n')
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
