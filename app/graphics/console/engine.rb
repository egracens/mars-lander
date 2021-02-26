require 'mini_magick'

module Graphics
  module Console
    class Engine < BaseEngine
      attr_reader :canvas

      def initialize
      end

      def render_level(level)
        MiniMagick::Tool::Convert.new do |img|
          img.size "#{level.max_x}x#{level.max_y}"
          img <<   'xc:transparent'
          img.stroke 'black'
          img.strokewidth '100'
          level.surface_lines.each do |line|
            img.draw "line #{line.a.x},#{line.a.y} #{line.b.x},#{line.b.y}"
          end
          img << 'circle.png'
        end

        # MiniMagick::Tool::Convert.new do | c |
        #   c.size "#{level.max_x}x#{level.max_y}"
        #   level.surface_lines.each do |line|
        #     c.draw "line #{line.a.x},#{line.a.y} #{line.b.x},#{line.b.y}"
        #   end
        #   c << "image.png"
        # end
        # render with catpix
      end

      def render_line(line)
        line.points.each do |point|
          render_point(point)
        end
      end

      def render_point(point)
        canvas.set(point.x, point.y)
      end
    end
  end
end
