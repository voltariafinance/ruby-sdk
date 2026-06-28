# frozen_string_literal: true

module Voltaria
  module Loans
    module Types
      class LoanDefaultPayload < Internal::Types::Model
        field :loan_id, -> { String }, optional: false, nullable: false
        field :default_date, -> { String }, optional: false, nullable: false
        field :sold_amount, -> { Voltaria::Loans::Types::LoanDefaultPayloadSoldAmount }, optional: false, nullable: false
      end
    end
  end
end
