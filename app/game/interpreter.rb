module Game
  class Interpreter
    attr_reader :world, :simulator

    def initialize(world)
      @world = world
      @simulator = Simulator.new(world)
    end

    def first_turn
      points = world.surface_points
      [points.count.to_s].concat(points.map(&:to_s))
    end

    def turn(user_input)
      process_user_input(user_input)
      world_characteristics
    end

    def process_user_input(user_input)
      simulator.simulate(user_input)
    end

    def world_characteristics

    end
  end
end
