# frozen_string_literal: true

module Voltaria
  module Types
    module LimitRequestStatusEnum
      extend Voltaria::Internal::Types::Enum

      PENDING = "pending"
      APPROVED = "approved"
      REJECTED = "rejected"
    end
  end
end
