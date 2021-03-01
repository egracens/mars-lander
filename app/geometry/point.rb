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

    def on_line?(line)
      distance_to_point(line.a) + distance_to_point(line.b) == line.length
    end

    def below_line?(line)
      return false if line.a.x > x
      return false if line.b.x < x

      x1 = line.a.x
      x2 = line.b.x
      y1 = line.a.y
      y2 = line.b.y

      v1 = Vector.new(x2-x1, y2-y1)   # Vector 1
      v2 = Vector.new(x2-self.x, y2-self.y)   # Vector 1
      xp = v1.x*v2.y - v1.y*v2.x  # Cross product
      xp > 0
      # if xp > 0
      #   print 'on one side'
      # elsif xp < 0
      #   print 'on the other'
      # else
      #   print 'on the same line!'
      # end
    end

    def distance_to_point(another_point)
      Math.sqrt((self.x - another_point.x)**2 + (self.y - another_point.y)**2)
    end

    def +(another_point)
      Point.new(x + another_point.x, y + another_point.y)
    end
  end
end
