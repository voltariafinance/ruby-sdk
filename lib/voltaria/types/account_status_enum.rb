# frozen_string_literal: true

module Voltaria
  module Types
    module AccountStatusEnum
      extend Voltaria::Internal::Types::Enum

      ACTIVE = "active"
      PASSIVE = "passive"
      PENDING = "pending"
    end
  end
end
