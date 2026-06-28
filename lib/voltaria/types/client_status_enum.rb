# frozen_string_literal: true

module Voltaria
  module Types
    module ClientStatusEnum
      extend Voltaria::Internal::Types::Enum

      ACTIVE = "active"
      REJECTED = "rejected"
      DEACTIVATED = "deactivated"
      PENDING = "pending"
      PENDING_ONBOARDING = "pending_onboarding"
      PRE_APPROVED = "pre_approved"
      DELETED = "deleted"
      INACTIVE = "inactive"
    end
  end
end
