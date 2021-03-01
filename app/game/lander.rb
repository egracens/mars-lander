module Game
  class Lander
    MIN_POWER = 0
    MAX_POWER = 4
    POWER_STEP = 1

    MIN_ROTATION = -90
    MAX_ROTATION = 90
    ROTATION_STEP = 15

    attr_accessor :position, :power, :rotate, :fuel, :speed

    def initialize(position:, power:, rotate:, fuel:, speed:)
      @position = position
      @speed = speed
      @power = power
      @rotate = rotate
      @fuel = fuel
      @crashed = false
    end

    def crashed?
      @crashed
    end

    def crash!
      @speed = Geometry::Vector.new(0, 0)
      @crashed = true
    end

    def thrust(new_power)
      if new_power > power
        @power += [new_power - power, POWER_STEP].min
      end

      if new_power < power
        @power -= [power - new_power, POWER_STEP].min
      end

      if power > MAX_POWER
        @power = MAX_POWER
      end

      if power < MIN_POWER
        @power = MIN_POWER
      end
    end

    def apply_rotation(new_rotate)
      if new_rotate > rotate
        @rotate += [new_rotate - rotate, ROTATION_STEP].min
      end

      if new_rotate < rotate
        @rotate -= [rotate - new_rotate, ROTATION_STEP].min
      end

      if rotate > MAX_ROTATION
        @rotate = MAX_ROTATION
      end

      if rotate < MIN_ROTATION
        @rotate = MIN_ROTATION
      end
    end
  end
end
