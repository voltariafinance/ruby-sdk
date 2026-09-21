# frozen_string_literal: true

module Voltaria
  module Types
    module TaskPriorityEnum
      extend Voltaria::Internal::Types::Enum

      LOW = "low"
      MEDIUM = "medium"
      HIGH = "high"
      URGENT = "urgent"
    end
  end
end
