# frozen_string_literal: true

module Voltaria
  module Types
    module KycStatusEnum
      extend Voltaria::Internal::Types::Enum

      NOT_STARTED = "not_started"
      TRIGGERED = "triggered"
      VERIFIED = "verified"
      REJECTED = "rejected"
    end
  end
end
