# frozen_string_literal: true

module Voltaria
  module Types
    module WebhookStatusEnum
      extend Voltaria::Internal::Types::Enum

      ACTIVE = "active"
      PAUSED = "paused"
      DISABLED = "disabled"
    end
  end
end
