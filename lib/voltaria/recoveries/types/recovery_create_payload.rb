# frozen_string_literal: true

module Voltaria
  module Recoveries
    module Types
      class RecoveryCreatePayload < Internal::Types::Model
        field :loan_id, -> { String }, optional: false, nullable: false
        field :amount, -> { Voltaria::Recoveries::Types::RecoveryCreatePayloadAmount }, optional: false, nullable: false
        field :currency, -> { Voltaria::Types::CurrencyEnum }, optional: false, nullable: false
        field :recovery_date, -> { String }, optional: false, nullable: false
        field :notes, -> { String }, optional: true, nullable: false
      end
    end
  end
end
