# frozen_string_literal: true

module Voltaria
  module Types
    module CopStatusEnum
      extend Voltaria::Internal::Types::Enum

      MATCHED = "matched"
      CLOSE_MATCH = "close_match"
      NOT_MATCHED = "not_matched"
      ACCOUNT_NOT_FOUND = "account_not_found"
      UNAVAILABLE = "unavailable"
    end
  end
end
