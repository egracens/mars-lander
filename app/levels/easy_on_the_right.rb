module Levels
  class EasyOnTheRight < BaseLevel
    describe_surface([
      Geometry::Point.new(0, 100),
      Geometry::Point.new(1000, 500),
      Geometry::Point.new(1500, 1500),
      Geometry::Point.new(3000, 1000),
      Geometry::Point.new(4000, 150),
      Geometry::Point.new(5500, 150),
      Geometry::Point.new(6999, 800)
    ])

    describe_lander(position: Geometry::Point.new(2700, 2500), fuel: 550)
  end
end
