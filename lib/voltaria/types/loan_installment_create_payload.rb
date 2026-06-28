# frozen_string_literal: true

module Voltaria
  module Types
    class LoanInstallmentCreatePayload < Internal::Types::Model
      field :expected_repayment_at, -> { String }, optional: false, nullable: false
      field :amount, -> { Voltaria::Types::LoanInstallmentCreatePayloadAmount }, optional: false, nullable: false
    end
  end
end
