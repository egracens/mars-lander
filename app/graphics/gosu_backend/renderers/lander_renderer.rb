module Graphics
  module GosuBackend
    module Renderers
      class LanderRenderer < BaseRenderer
        def render(lander)
          return if lander.nil?

          render_body(lander)
        end

        def render_body(lander)
          window.draw_circle(lander.position.x, lander.position.y, 100, Gosu::Color::WHITE)
        end
      end
    end
  end
end
