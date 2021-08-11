class Robot
  attr_accessor :direction

  def orient(direction)
    raise ArgumentError unless %i(east west north south).include?(direction)

    @direction = direction
  end

  def bearing
    direction
  end

  def turn_right
    if direction == :north
      self.direction = :east
    end
  end
end