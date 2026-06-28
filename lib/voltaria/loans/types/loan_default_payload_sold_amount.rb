# frozen_string_literal: true

module Voltaria
  module Loans
    module Types
      # Amount recovered when the defaulted loan is sold.
      class LoanDefaultPayloadSoldAmount < Internal::Types::Model
        extend Voltaria::Internal::Types::Union

        member -> { Integer }
        member -> { String }
      end
    end
  end
end
