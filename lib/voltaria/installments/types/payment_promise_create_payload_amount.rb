# frozen_string_literal: true

module Voltaria
  module Installments
    module Types
      # The amount the client has promised to pay (must be > 0)
      class PaymentPromiseCreatePayloadAmount < Internal::Types::Model
        extend Voltaria::Internal::Types::Union

        member -> { Integer }
        member -> { String }
      end
    end
  end
end
