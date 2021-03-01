module Geometry
  class Line
    attr_reader :a, :b

    def initialize(a, b)
      @a = a
      @b = b
    end

    def to_s
      "Line(#{a.x} #{a.y}) (#{b.x} #{b.y})"
    end

    def length
      a.distance_to_point(b)
    end
  end
end
