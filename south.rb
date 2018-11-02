require_relative "coordinate.rb"

class South
  def move_forward(current_coord)
    return current_coord.add(Coordinate.new(0, -1))
  end
end
