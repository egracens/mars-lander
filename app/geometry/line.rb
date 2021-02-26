module Geometry
  class Line
    attr_reader :a, :b

    def initialize(a, b)
      @a = a
      @b = b
    end

    def points
      (0..1800).step(10).map do |x|
        Point.new(x, Math.sin(x))
      end
    end
  end
end
