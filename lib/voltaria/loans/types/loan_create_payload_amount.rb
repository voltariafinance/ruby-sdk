# frozen_string_literal: true

module Voltaria
  module Loans
    module Types
      # The amount of the loan
      class LoanCreatePayloadAmount < Internal::Types::Model
        extend Voltaria::Internal::Types::Union

        member -> { Integer }
        member -> { String }
      end
    end
  end
end
