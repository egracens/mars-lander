module Game
  class Lander
    attr_accessor :position, :power, :rotate, :fuel, :speed

    def initialize(position:, power:, rotate:, fuel:, speed:)
      @position = position
      @speed = speed
      @power = power
      @rotate = rotate
      @fuel = fuel
    end
  end
end
