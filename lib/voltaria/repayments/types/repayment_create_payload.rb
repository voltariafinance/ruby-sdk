# frozen_string_literal: true

module Voltaria
  module Repayments
    module Types
      class RepaymentCreatePayload < Internal::Types::Model
        field :installment_id, -> { String }, optional: true, nullable: false
        field :loan_id, -> { String }, optional: true, nullable: false
        field :correlation_id, -> { String }, optional: true, nullable: false
        field :amount, -> { Voltaria::Repayments::Types::RepaymentCreatePayloadAmount }, optional: false, nullable: false
        field :repayment_date, -> { String }, optional: true, nullable: false
        field :data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
        field :is_early_settlement, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
