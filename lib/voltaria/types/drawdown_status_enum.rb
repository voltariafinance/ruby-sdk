# frozen_string_literal: true

module Voltaria
  module Types
    module DrawdownStatusEnum
      extend Voltaria::Internal::Types::Enum

      REQUESTED = "requested"
      ACTIVE = "active"
      CANCELLED = "cancelled"
    end
  end
end
