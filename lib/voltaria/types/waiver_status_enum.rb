# frozen_string_literal: true

module Voltaria
  module Types
    module WaiverStatusEnum
      extend Voltaria::Internal::Types::Enum

      PENDING = "pending"
      ACTIVE = "active"
      PAID = "paid"
      REJECTED = "rejected"
    end
  end
end
