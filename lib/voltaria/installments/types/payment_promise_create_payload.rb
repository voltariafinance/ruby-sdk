# frozen_string_literal: true

module Voltaria
  module Installments
    module Types
      class PaymentPromiseCreatePayload < Internal::Types::Model
        field :installment_id, -> { String }, optional: false, nullable: false
        field :amount, -> { Voltaria::Installments::Types::PaymentPromiseCreatePayloadAmount }, optional: false, nullable: false
        field :promised_date, -> { String }, optional: false, nullable: false
        field :notes, -> { String }, optional: true, nullable: false
      end
    end
  end
end
