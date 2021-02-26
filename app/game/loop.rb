module Game
  class Loop
    TICK_INTERVAL = 0.1

    attr_reader :level, :graphics_engine

    def initialize(level:, graphics_engine:)
      @level = level
      @graphics_engine = graphics_engine
    end

    def start
      graphics_engine.render_level(level)
      # sleep TICK_INTERVAL
    end
  end
end
