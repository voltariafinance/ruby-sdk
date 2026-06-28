# frozen_string_literal: true

module Voltaria
  module Installments
    module Types
      class InstallmentEditPayload < Internal::Types::Model
        field :installment_id, -> { String }, optional: false, nullable: false
        field :amount, -> { Voltaria::Installments::Types::InstallmentEditPayloadAmount }, optional: false, nullable: false
        field :expected_repayment_at, -> { String }, optional: false, nullable: false
      end
    end
  end
end
