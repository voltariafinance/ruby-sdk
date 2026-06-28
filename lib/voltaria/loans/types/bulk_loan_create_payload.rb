# frozen_string_literal: true

module Voltaria
  module Loans
    module Types
      class BulkLoanCreatePayload < Internal::Types::Model
        field :loans, -> { Internal::Types::Array[Voltaria::Types::BulkLoanItemPayload] }, optional: false, nullable: false
      end
    end
  end
end
