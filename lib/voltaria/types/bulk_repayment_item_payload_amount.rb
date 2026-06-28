# frozen_string_literal: true

module Voltaria
  module Types
    # The amount of payment made for installment
    class BulkRepaymentItemPayloadAmount < Internal::Types::Model
      extend Voltaria::Internal::Types::Union

      member -> { Integer }
      member -> { String }
    end
  end
end
