# frozen_string_literal: true

module Voltaria
  module Internal
    module Types
      module Unknown
        include Voltaria::Internal::Types::Type

        def coerce(value)
          value
        end
      end
    end
  end
end
