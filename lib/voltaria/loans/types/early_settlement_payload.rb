# frozen_string_literal: true

module Voltaria
  module Loans
    module Types
      class EarlySettlementPayload < Internal::Types::Model
        field :loan_id, -> { String }, optional: false, nullable: false
        field :settlement_date, -> { String }, optional: true, nullable: false
      end
    end
  end
end
