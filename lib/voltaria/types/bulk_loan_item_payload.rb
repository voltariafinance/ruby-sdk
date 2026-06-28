# frozen_string_literal: true

module Voltaria
  module Types
    class BulkLoanItemPayload < Internal::Types::Model
      field :client_id, -> { String }, optional: false, nullable: false
      field :currency, -> { Voltaria::Types::CurrencyEnum }, optional: false, nullable: false
      field :amount, -> { Voltaria::Types::BulkLoanItemPayloadAmount }, optional: false, nullable: false
      field :correlation_id, -> { String }, optional: true, nullable: false
      field :loan_date, -> { String }, optional: true, nullable: false
      field :installments, -> { Internal::Types::Array[Voltaria::Types::LoanInstallmentCreatePayload] }, optional: false, nullable: false
      field :data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
