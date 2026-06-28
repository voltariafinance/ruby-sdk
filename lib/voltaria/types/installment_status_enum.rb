# frozen_string_literal: true

module Voltaria
  module Types
    module InstallmentStatusEnum
      extend Voltaria::Internal::Types::Enum

      ACTIVE = "active"
      OVERDUE = "overdue"
      DEFAULT = "default"
      SOLD = "sold"
      RESTRUCTURED = "restructured"
      REPAID = "repaid"
      PENDING = "pending"
      DELETED = "deleted"
      INACTIVE = "inactive"
    end
  end
end
