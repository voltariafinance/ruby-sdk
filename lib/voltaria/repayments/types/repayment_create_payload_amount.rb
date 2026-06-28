# frozen_string_literal: true

module Voltaria
  module Repayments
    module Types
      # The amount of payment made for installment
      class RepaymentCreatePayloadAmount < Internal::Types::Model
        extend Voltaria::Internal::Types::Union

        member -> { Integer }
        member -> { String }
      end
    end
  end
end
