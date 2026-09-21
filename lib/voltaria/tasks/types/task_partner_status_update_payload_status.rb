# frozen_string_literal: true

module Voltaria
  module Tasks
    module Types
      module TaskPartnerStatusUpdatePayloadStatus
        extend Voltaria::Internal::Types::Enum

        ACTIVE = "active"
        IN_PROGRESS = "in_progress"
        BLOCKED = "blocked"
        DONE = "done"
      end
    end
  end
end
