class Robot
  attr_accessor :direction, :x, :y

  def orient(direction)
    raise ArgumentError unless %i(east west north south).include?(direction)

    @direction = direction
  end

  def bearing
    direction
  end

  def turn_right
    hash = { north: :east, east: :south, south: :west, west: :north }
    self.direction = hash[direction]
  end

  def turn_left
    hash = { north: :west, east: :north, south: :east, west: :south }
    self.direction = hash[direction]
  end

  def at(x, y)
    self.x = x
    self.y = y
  end

  def coordinates
    [x, y]
  end

  def advance
    hash = { north: [0, 1], east: [1, 0], south: [0, -1], west: [-1, 0] }
    self.x += hash[bearing][0]
    self.y += hash[bearing][1]
  end

end

