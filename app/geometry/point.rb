module Geometry
  class Point
    attr_reader :x, :y

    def initialize(x, y)
      @x = x
      @y = y
    end

    def to_s
      "#{x} #{y}"
    end

    def +(another_vector)
      Vector.new(x + another_vector.x, y + another_vector.y)
    end
  end
end
