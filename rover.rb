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
    direction_hash = {
      'N' => North.new(),
      'E' => East.new(),
      'S' => South.new(),
      'W' => West.new(),
    }
    for instuction in instructions.split('')
      # Check whether it's a left rotation
      if instuction.upcase() == 'L'
        direction = direction_hash[direction].turn_left()

      # Check whether it's a right rotation
      elsif instuction.upcase() == 'R'
        direction = direction_hash[direction].turn_right()

      # It's a movement instuction
      else
        final_coord = direction_hash[direction].move(final_coord)
      end
    end
    return final_coord, direction
  end
end
