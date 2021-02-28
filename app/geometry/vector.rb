module Geometry
  class Vector
    attr_reader :x, :y

    def initialize(x, y)
      @x = x
      @y = y
    end

    def +(another_vector)
      Vector.new(x + another_vector.x, y + another_vector.y)
    end
  end
end
