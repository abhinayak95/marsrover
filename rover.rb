require_relative "coordinate.rb"
require_relative "north.rb"
require_relative "east.rb"
require_relative "south.rb"
require_relative "west.rb"


class Rover
  attr_accessor :rover_coord, :direction

  def initialize(rover_coord, direction)
    @rover_coord = rover_coord
    @direction = direction.upcase()
  end

  def get_position
    return @rover_coord, @direction
  end

  def set_position(rover_coord, direction)
    @rover_coord = rover_coord
    @direction = direction.upcase()
  end

  def move(instructions)
    final_coord = @rover_coord
    direction = @direction
    directions = ['N','E','S','W']
    direction_hash = {
      'N' => North.new(),
      'E' => East.new(),
      'S' => South.new(),
      'W' => West.new(),
    }
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
        final_coord = direction_hash[directions[current_direction_index % 4]].move_forward(final_coord)
      end
    end
    return final_coord, directions[current_direction_index % 4]
  end
end
