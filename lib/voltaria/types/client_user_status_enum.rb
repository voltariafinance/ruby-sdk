# frozen_string_literal: true

module Voltaria
  module Types
    module ClientUserStatusEnum
      extend Voltaria::Internal::Types::Enum

      PENDING = "pending"
      ACTIVE = "active"
      INACTIVE = "inactive"
    end
  end
end
