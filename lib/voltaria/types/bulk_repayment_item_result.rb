# frozen_string_literal: true

module Voltaria
  module Types
    class BulkRepaymentItemResult < Internal::Types::Model
      field :index, -> { Integer }, optional: false, nullable: false
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
      field :repayment_log_id, -> { String }, optional: true, nullable: false
      field :error, -> { String }, optional: true, nullable: false
      field :installment_id, -> { String }, optional: true, nullable: false
      field :loan_id, -> { String }, optional: true, nullable: false
      field :amount, -> { String }, optional: true, nullable: false
    end
  end
end
