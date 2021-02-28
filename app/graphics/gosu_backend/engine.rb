module Graphics
  module GosuBackend
    class Engine < BaseEngine
      attr_reader :window

      def initialize
        super
        @window = MainWindow.new
        Thread.start { @window.show }
      end

      def render_world_state(world)
        window.surface_lines = world.surface_lines
        window.lander = world.lander
      end
    end
  end
end
