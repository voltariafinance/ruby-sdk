# frozen_string_literal: true

module Voltaria
  module Types
    class RepaymentResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :created_at, -> { String }, optional: false, nullable: false
      field :client_id, -> { String }, optional: false, nullable: false
      field :loan_id, -> { String }, optional: false, nullable: false
      field :installment_id, -> { String }, optional: false, nullable: false
      field :amount, -> { String }, optional: false, nullable: false
      field :repayment_date, -> { String }, optional: true, nullable: false
      field :type, -> { String }, optional: true, nullable: false
      field :data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
      field :is_early_settlement, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :principal_amount, -> { String }, optional: true, nullable: false
      field :interest_amount, -> { String }, optional: true, nullable: false
      field :late_fee_amount, -> { String }, optional: true, nullable: false
    end
  end
end
