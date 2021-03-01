require 'gosu'

module Graphics
  module GosuBackend
    class MainWindow < ::Gosu::Window
      attr_reader :transformer
      attr_accessor :surface_lines, :lander, :surface_renderer, :lander_renderer, :statistics_renderer

      def initialize
        super(700, 300)
        @transformer = Geometry::CoordinatesTransformer.new(7000, 3000, 700, 300)
        @surface_lines = []
        @lander = nil
        @surface_renderer = Renderers::SurfaceRenderer.new(self)
        @lander_renderer = Renderers::LanderRenderer.new(self)
        @statistics_renderer = Renderers::StatisticsRenderer.new(self)
      end

      def draw
        surface_renderer.render(surface_lines)
        lander_renderer.render(lander)
        statistics_renderer.render(lander)
      end

      def draw_line(x1, y1, c1, x2, y2, c2)
        super(
          transformer.transform_x_to_scene(x1),
          transformer.transform_y_to_scene(y1),
          c1,
          transformer.transform_x_to_scene(x2),
          transformer.transform_y_to_scene(y2),
          c2
        )
      end

      def draw_rect(x, y, width, height, c, z = 0, mode = :default)
        super(
          transformer.transform_x_to_scene(x),
          transformer.transform_y_to_scene(y),
          width,
          height,
          c,
          z,
          mode
        )
      end

      def draw_circle(cx, cy, r, color, step = 10)
        0.step(360, step) do |a1|
          a2 = a1 + step
          draw_line(cx + Gosu.offset_x(a1, r), cy + Gosu.offset_y(a1, r), color, cx + Gosu.offset_x(a2, r), cy + Gosu.offset_y(a2, r), color)
        end
      end
    end
  end
end
