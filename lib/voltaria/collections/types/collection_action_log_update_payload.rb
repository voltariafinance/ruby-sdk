# frozen_string_literal: true

module Voltaria
  module Collections
    module Types
      class CollectionActionLogUpdatePayload < Internal::Types::Model
        field :log_id, -> { String }, optional: false, nullable: false
        field :status, -> { Voltaria::Collections::Types::CollectionActionLogUpdatePayloadStatus }, optional: false, nullable: false
        field :notes, -> { String }, optional: true, nullable: false
      end
    end
  end
end
