# frozen_string_literal: true

module Voltaria
  module Types
    class LoanResponseWithInstallments < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :created_at, -> { String }, optional: false, nullable: false
      field :updated_at, -> { String }, optional: false, nullable: false
      field :partner_id, -> { String }, optional: false, nullable: false
      field :client_id, -> { String }, optional: false, nullable: false
      field :currency, -> { Voltaria::Types::CurrencyEnum }, optional: false, nullable: false
      field :amount, -> { String }, optional: false, nullable: false
      field :status, -> { Voltaria::Types::LoanStatusEnum }, optional: false, nullable: false
      field :irr, -> { String }, optional: true, nullable: false
      field :loan_date, -> { String }, optional: true, nullable: false
      field :currency_rate, -> { String }, optional: false, nullable: false
      field :correlation_id, -> { String }, optional: true, nullable: false
      field :payment_status, -> { Voltaria::Types::LoanPaymentStatusEnum }, optional: true, nullable: false
      field :payment_reference, -> { String }, optional: true, nullable: false
      field :early_settlement_date, -> { String }, optional: true, nullable: false
      field :early_settlement_amount, -> { String }, optional: true, nullable: false
      field :data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
      field :installments, -> { Internal::Types::Array[Voltaria::Types::LoanInstallmentResponse] }, optional: true, nullable: false
    end
  end
end
