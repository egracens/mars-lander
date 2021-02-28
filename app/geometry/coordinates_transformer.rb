module Geometry
  class CoordinatesTransformer
    attr_reader :max_x, :max_y, :scene_max_x, :scene_max_y

    def initialize(max_x, max_y, scene_max_x, scene_max_y)
      @max_x = max_x
      @max_y = max_y
      @scene_max_x = scene_max_x
      @scene_max_y = scene_max_y
    end

    def transform_x_to_scene(original_x)
      original_x.to_f * (scene_max_x.to_f / max_x)
    end

    def transform_y_to_scene(original_y)
      scene_max_y - original_y.to_f * (scene_max_y.to_f / max_y)
    end
  end
end
