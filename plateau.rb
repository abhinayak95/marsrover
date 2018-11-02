 require_relative 'coordinate.rb'

class Plateau
  attr_accessor :x_left_coord, :y_left_coord, :x_right_coord, :y_right_coord
  def initialize(plateau_coords)
    @x_right_coord = plateau_coords.x_coord
    @y_right_coord = plateau_coords.y_coord
  end
  def is_within_boundaries(rover_coords)
    if rover_coords.x_coord > x_right_coord or rover_coords.y_coord > y_right_coord or rover_coords.x_coord < 0 or rover_coords.y_coord < 0
      return false
    else
      return true
    end
  end
end
