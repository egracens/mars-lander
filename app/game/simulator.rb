module Game
  class Simulator
    GRAVITY = Geometry::Vector.new(0, -3.711)

    attr_reader :world

    def initialize(world)
      @world = world
    end

    def simulate(action)
      apply_gravity
      move_objects
    end

    private

    def apply_gravity
      world.lander.speed += GRAVITY
    end

    def move_objects
      world.lander.position += world.lander.speed
    end
  end
end
