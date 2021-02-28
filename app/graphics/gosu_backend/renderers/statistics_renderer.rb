module Graphics
  module GosuBackend
    module Renderers
      class StatisticsRenderer < BaseRenderer
        attr_reader :font

        def initialize(window)
          super(window)
          @font = Gosu::Font.new(window, Gosu::default_font_name, 20)
        end

        def render(lander)
          return if lander.nil?

          font.draw_text("X: #{lander.position.x.round(2)}", 10, 20, 1, 1.0, 1.0, Gosu::Color::WHITE)
          font.draw_text("Y: #{lander.position.y.round(2)}", 10, 40, 1, 1.0, 1.0, Gosu::Color::WHITE)
          font.draw_text("Fuel: #{lander.fuel.round(2)}", 150, 20, 1, 1.0, 1.0, Gosu::Color::WHITE)
          font.draw_text("Horizontal Speed: #{lander.speed.x.round(2)}", 150, 40, 1, 1.0, 1.0, Gosu::Color::WHITE)
          font.draw_text("Vertical Speed: #{lander.speed.y.round(2)}", 150, 60, 1, 1.0, 1.0, Gosu::Color::WHITE)
        end
      end
    end
  end
end
