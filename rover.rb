require_relative "coordinate.rb"

class Rover
  attr_accessor :x_coord, :y_coord, :direction

  def initialize(rover_coords, direction)
    @x_coord = rover_coords.x_coord
    @y_coord = rover_coords.y_coord
    @direction = direction.upcase()
  end

  def get_position
    return Coordinate.new(@x_coord, @y_coord), @direction
  end

  def set_position(rover_coords, direction)
    @x_coord = rover_coords.x_coord
    @y_coord = rover_coords.y_coord
    @direction = direction.upcase()
  end

  def move(instructions)
    x_coord = @x_coord
    y_coord = @y_coord
    direction = @direction
    directions = ['N','E','S','W']
    current_direction_index = directions.index(@direction)
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
    return Coordinate.new(x_coord, y_coord), directions[current_direction_index % 4]
  end
end
