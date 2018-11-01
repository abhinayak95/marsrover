class Rover
  attr_accessor :x_coord, :y_coord, :direction

  def initialize(x_coord, y_coord, direction)
    @x_coord = x_coord.to_i
    @y_coord = y_coord.to_i
    @direction = direction.upcase()
  end

  def get_current_position
    return "#{x_coord} #{y_coord} #{direction}"
  end

  def give_instructions(instructions)
    directions = ['N','E','S','W']
    current_direction_index = directions.index(@direction)
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
            @y_coord += 1
          when 'E'
            @x_coord += 1
          when 'S'
            @y_coord -= 1
          when 'W'
            @x_coord -= 1
        end
      end
    end
    return x_coord, y_coord, directions[current_direction_index % 4]
  end
end
