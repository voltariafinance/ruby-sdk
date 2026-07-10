# frozen_string_literal: true

module Voltaria
  module Types
    module CollectionActionTypeEnum
      extend Voltaria::Internal::Types::Enum

      EMAIL = "email"
      SMS = "sms"
      PHONE_CALL = "phone_call"
      PUSH_NOTIFICATION = "push_notification"
    end
  end
end
