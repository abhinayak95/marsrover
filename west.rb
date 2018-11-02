require_relative "coordinate.rb"

class West
  def move(current_coord)
    return current_coord.add(Coordinate.new(-1, 0))
  end
  def turn_left
    return 'S'
  end
  def turn_right
    return 'N'
  end
end
