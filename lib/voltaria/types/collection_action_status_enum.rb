# frozen_string_literal: true

module Voltaria
  module Types
    module CollectionActionStatusEnum
      extend Voltaria::Internal::Types::Enum

      PENDING = "pending"
      COMPLETED = "completed"
      FAILED = "failed"
      SKIPPED = "skipped"
    end
  end
end
