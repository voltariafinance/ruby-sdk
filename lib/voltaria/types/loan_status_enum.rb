# frozen_string_literal: true

module Voltaria
  module Types
    module LoanStatusEnum
      extend Voltaria::Internal::Types::Enum

      PENDING = "pending"
      OVERDUE = "overdue"
      ACTIVE = "active"
      DEFAULT = "default"
      SOLD = "sold"
      RESTRUCTURED = "restructured"
      REPAID = "repaid"
      PRE_APPROVED = "pre_approved"
      REJECTED = "rejected"
      DELETED = "deleted"
      INACTIVE = "inactive"
    end
  end
end
