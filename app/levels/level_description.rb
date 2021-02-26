module Levels
  module LevelDescription
    def describe_level(points)
      define_method :points do
        points
      end
    end
  end
end
