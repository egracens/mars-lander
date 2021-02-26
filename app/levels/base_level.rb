module Levels
  class BaseLevel
    extend LevelDescription

    def surface_lines
      points.each_cons(2).map do |a, b|
        Geometry::Line.new(a, b)
      end
    end

    def min_x
      0
    end

    def max_x
      7000
    end

    def min_y
      0
    end

    def max_y
      3000
    end
  end
end
