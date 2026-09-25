# frozen_string_literal: true

module Voltaria
  module Types
    module TaskStatusEnum
      extend Voltaria::Internal::Types::Enum

      ACTIVE = "active"
      IN_PROGRESS = "in_progress"
      BLOCKED = "blocked"
      REVIEW_NEEDED = "review_needed"
      DONE = "done"
      CANCELLED = "cancelled"
    end
  end
end
