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


x_right_coord = 5
y_right_coord = 5
results = Array.new()
results[0] = find_coordinates(1, 2, 'N', 'LMLMLMLMM')
results[1] = find_coordinates(3, 3, 'E', 'MMRMMRMRRM')

for result in results
  if result[0] > x_right_coord or result[1] > y_right_coord or result[0] < 0 or result[1] < 0
    puts "This rover has crossed the plateau"
  else
    puts "#{result[0]} #{result[1]} #{result[2]}"
  end
end
