module Game
  class World
    attr_reader :surface_points, :lander

    def initialize(level)
      @surface_points = level.surface_points
      @lander = level.lander
    end

    def surface_lines
      surface_points.each_cons(2).map do |a, b|
        Geometry::Line.new(a, b)
      end
    end
  end
end
