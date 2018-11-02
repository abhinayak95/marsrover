class Coordinate
  attr_accessor :x_coord, :y_coord
  def initialize(x_coord, y_coord)
    @x_coord = x_coord.to_i()
    @y_coord = y_coord.to_i()
  end
  def add(coordinate)
    return Coordinate.new((@x_coord + coordinate.x_coord),(@y_coord + coordinate.y_coord))
  end
end
