# frozen_string_literal: true

module Voltaria
  module Types
    module PaymentPromiseStatusEnum
      extend Voltaria::Internal::Types::Enum

      ACTIVE = "active"
      PAID = "paid"
      NOT_PAID = "not_paid"
      CANCELLED = "cancelled"
    end
  end
end
