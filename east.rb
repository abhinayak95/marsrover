require_relative "coordinate.rb"

class East
  def move(current_coord)
    return current_coord.add(Coordinate.new(1, 0))
  end
  def turn_left
    return 'N'
  end
  def turn_right
    return 'S'
  end
end
