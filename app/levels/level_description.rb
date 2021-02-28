module Levels
  module LevelDescription
    def describe_surface(points)
      define_method :surface_points do
        points
      end
    end

    def describe_lander(position:, fuel:)
      define_method :lander do
        Game::Lander.new(
          position: position,
          fuel: fuel,
          speed: Geometry::Vector.new(0, 0),
          power: 0,
          rotate: 0
        )
      end
    end
  end
end
