class Plateau
  attr_accessor :x_left_coord, :y_left_coord, :x_right_coord, :y_right_coord
  def initialize(x_right_coord, y_right_coord)
    @x_right_coord = x_right_coord.to_i()
    @y_right_coord = y_right_coord.to_i()
  end
  def is_within_boundaries(x_coord, y_coord)
    if x_coord > x_right_coord or y_coord > y_right_coord or x_coord < 0 or y_coord < 0
      return false
    else
      return true
    end
  end
end
