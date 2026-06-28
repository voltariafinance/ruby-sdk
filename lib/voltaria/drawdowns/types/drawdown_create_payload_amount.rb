# frozen_string_literal: true

module Voltaria
  module Drawdowns
    module Types
      # The amount for the drawdown.
      class DrawdownCreatePayloadAmount < Internal::Types::Model
        extend Voltaria::Internal::Types::Union

        member -> { Integer }
        member -> { String }
      end
    end
  end
end
