# frozen_string_literal: true

module Voltaria
  module Types
    class InstallmentResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :created_at, -> { String }, optional: false, nullable: false
      field :updated_at, -> { String }, optional: false, nullable: false
      field :partner_id, -> { String }, optional: false, nullable: false
      field :client_id, -> { String }, optional: false, nullable: false
      field :currency, -> { Voltaria::Types::CurrencyEnum }, optional: false, nullable: false
      field :status, -> { Voltaria::Types::InstallmentStatusEnum }, optional: false, nullable: false
      field :loan_id, -> { String }, optional: false, nullable: false
      field :amount, -> { String }, optional: false, nullable: false
      field :expected_repayment_at, -> { String }, optional: false, nullable: false
      field :installment_number, -> { Integer }, optional: false, nullable: false
      field :installments, -> { Integer }, optional: false, nullable: false
      field :principal, -> { String }, optional: false, nullable: false
      field :interest, -> { String }, optional: false, nullable: false
      field :repayment_amount, -> { String }, optional: true, nullable: false
      field :repayment_at, -> { String }, optional: true, nullable: false
    end
  end
end
