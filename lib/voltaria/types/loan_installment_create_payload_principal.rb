# frozen_string_literal: true

module Voltaria
  module Types
    # The principal part of the installment amount. Only when creating a loan with repayment_method custom, together
    # with interest
    class LoanInstallmentCreatePayloadPrincipal < Internal::Types::Model
      extend Voltaria::Internal::Types::Union

      member -> { Integer }
      member -> { String }
    end
  end
end
