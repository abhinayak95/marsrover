def find_coordinates(x_coord, y_coord, facing, instructions)
  directions = ['N','E','S','W']
  current_direction_index = directions.index(facing.upcase())
  movements = 1
  for instuction in instructions.split('')

    # Check whether it's a left rotation
    if instuction.upcase() == 'L'
      current_direction_index -= 1

    # Check whether it's a right rotation
    elsif instuction.upcase() == 'R'
      current_direction_index += 1

    # It's a movement instuction
    else
      case directions[current_direction_index % 4]
        when 'N'
          y_coord += 1
        when 'E'
          x_coord += 1
        when 'S'
          y_coord -= 1
        when 'W'
          x_coord -= 1
      end
    end
  end
  return x_coord, y_coord, directions[current_direction_index % 4]
end



puts 'Enter the right coordinates of the input:'
right_coords = gets.chomp()
right_coords = right_coords.split(' ')
more_rovers = 'y'
coord_per_rover = []
instructions_per_rover = []
index = 0;
while(more_rovers == 'y')
  puts 'Enter the coordinates of the rover'
  coord_per_rover[index] = gets.chomp()
  puts 'Enter the instructions'
  instructions_per_rover[index] = gets.chomp()
  puts "Are there any rovers left? ('Y' for yes & 'N' for no)"
  more_rovers = gets.chomp().downcase()
  index += 1
end



# result = find_coordinates(1, 2, 'N', 'LMLMLMLMM')
# result = find_coordinates(3, 3, 'E', 'MMRMMRMRRM')
for index in 0..coord_per_rover.length()-1
  coordinates = coord_per_rover[index].split(' ')
  result = find_coordinates(coordinates[0].to_i, coordinates[1].to_i, coordinates[2], instructions_per_rover[index])
  # result = find_coordinates(1, 2, 'N', 'LMLMLMLMM')
  if result[0] > right_coords[0].to_i or result[1] > right_coords[1].to_i or result[0] < 0 or result[1] < 0
    puts "This rover has crossed the plateau"
  else
    puts "#{result[0]} #{result[1]} #{result[2]}"
  end
end
