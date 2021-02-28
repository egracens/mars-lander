module Game
  class Loop
    FPS = 30

    attr_reader :interpreter, :graphics_engine, :bot

    def initialize(interpreter:, graphics_engine:, bot:)
      @interpreter = interpreter
      @graphics_engine = graphics_engine
      @bot = bot
    end

    def start
      response_from_world = interpreter.first_turn
      response_from_bot = bot.first_turn(response_from_world)
      loop do
        response_from_interpreter = interpreter.turn(response_from_bot)
        response_from_bot = bot.turn(response_from_interpreter)
        puts "Interpreter: #{response_from_interpreter}"
        puts "Bot: #{response_from_bot}"
        graphics_engine.render_world_state(interpreter.world)
        sleep 1.0 / FPS
      end
    end
  end
end
