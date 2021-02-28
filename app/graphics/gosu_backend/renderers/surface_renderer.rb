module Graphics
  module GosuBackend
    module Renderers
      class SurfaceRenderer < BaseRenderer
        def render(surface_lines)
          surface_lines.each do |surface_line|
            window.draw_line(
              surface_line.a.x, surface_line.a.y, Gosu::Color::RED,
              surface_line.b.x, surface_line.b.y, Gosu::Color::WHITE
            )
          end
        end
      end
    end
  end
end
