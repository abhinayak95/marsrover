require_relative "coordinate.rb"

class South
  def move(current_coord)
    return current_coord.add(Coordinate.new(0, -1))
  end
  def turn_left
    return 'E'
  end
  def turn_right
    return 'W'
  end
end
