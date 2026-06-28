# frozen_string_literal: true

module Voltaria
  module Installments
    module Types
      # The new amount for the installment
      class InstallmentEditPayloadAmount < Internal::Types::Model
        extend Voltaria::Internal::Types::Union

        member -> { Integer }
        member -> { String }
      end
    end
  end
end
