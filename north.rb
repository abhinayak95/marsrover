require_relative "coordinate.rb"

class North
  def move(current_coord)
    return current_coord.add(Coordinate.new(0, 1))
  end
  def turn_left
    return 'W'
  end
  def turn_right
    return 'E'
  end
end
