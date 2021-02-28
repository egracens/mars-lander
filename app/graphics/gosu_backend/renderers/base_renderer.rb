module Graphics
  module GosuBackend
    module Renderers
      class BaseRenderer
        attr_reader :window

        def initialize(window)
          @window = window
        end
      end
    end
  end
end
