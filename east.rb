require_relative "coordinate.rb"

class East
  def move_forward(current_coord)
    return current_coord.add(Coordinate.new(1, 0))
  end
end
