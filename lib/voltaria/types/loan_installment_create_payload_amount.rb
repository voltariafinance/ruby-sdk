# frozen_string_literal: true

module Voltaria
  module Types
    # The amount due for this installment
    class LoanInstallmentCreatePayloadAmount < Internal::Types::Model
      extend Voltaria::Internal::Types::Union

      member -> { Integer }
      member -> { String }
    end
  end
end
