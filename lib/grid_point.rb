class GridPoint
  attr :x, :y
  def initialize(x, y)
    @x = x
    @y = y
  end

  def notation
    "(#{@x},#{@y})"
  end

  def ==(gp)
    self.x == gp.x && self.y == gp.y
  end

  def neighbor?(gp)
    (self.x - gp.x).abs + (self.y - gp.y).abs == 1
  end
end
