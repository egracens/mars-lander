module Game
  class Simulator
    GRAVITY = Geometry::Vector.new(0, -3.711)

    attr_reader :world

    def initialize(world)
      @world = world
    end

    def simulate(action)
      rotation, power = action.split(' ').map(&:to_f)
      apply_gravity
      apply_rotation(rotation)
      apply_power(power)
      move_objects
      check_collisions
    end

    private

    def apply_gravity
      return if world.lander.crashed?

      world.lander.speed += GRAVITY
    end

    def apply_rotation(rotation)
      world.lander.apply_rotation(rotation)
    end

    def apply_power(power)
      return if world.lander.crashed?

      world.lander.thrust(power)

      power_vector = Geometry::Vector.new(
        Math.cos((90.0 + world.lander.rotate) * Math::PI / 180) * world.lander.power,
        Math.sin((90.0 + world.lander.rotate) * Math::PI / 180) * world.lander.power
      )

      world.lander.speed = world.lander.speed + power_vector
    end

    def move_objects
      return if world.lander.crashed?

      world.lander.position += world.lander.speed
    end

    def check_collisions
      world.surface_lines.each do |surface_line|
        if world.lander.position.below_line?(surface_line)
          lander_crashed
          puts "Below line #{surface_line}"
        end
      end
    end

    def lander_crashed
      world.lander.crash!
    end
  end
end
