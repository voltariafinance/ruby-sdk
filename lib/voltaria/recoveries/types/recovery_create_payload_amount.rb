# frozen_string_literal: true

module Voltaria
  module Recoveries
    module Types
      # The amount recovered (must be > 0).
      class RecoveryCreatePayloadAmount < Internal::Types::Model
        extend Voltaria::Internal::Types::Union

        member -> { Integer }
        member -> { String }
      end
    end
  end
end
