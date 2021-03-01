module Graphics
  module GosuBackend
    module Renderers
      class LanderRenderer < BaseRenderer
        def render(lander)
          return if lander.nil?


          render_body(lander)
          render_crash_sign(lander) if lander.crashed?

        end

        def render_body(lander)
          window.draw_circle(circle_center(lander).x, circle_center(lander).y, 100, Gosu::Color::WHITE)
        end

        def render_crash_sign(lander)
          window.draw_line(
            circle_center(lander).x - 100,
            circle_center(lander).y - 100, Gosu::Color::RED,
            circle_center(lander).x + 100,
            circle_center(lander).y + 100, Gosu::Color::RED
          )

          window.draw_line(
            circle_center(lander).x - 100,
            circle_center(lander).y + 100, Gosu::Color::RED,
            circle_center(lander).x + 100,
            circle_center(lander).y - 100, Gosu::Color::RED
          )
        end

        def circle_center(lander)
          Geometry::Point.new(lander.position.x, lander.position.y + 100)
        end
      end
    end
  end
end
