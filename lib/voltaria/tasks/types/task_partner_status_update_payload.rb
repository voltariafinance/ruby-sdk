# frozen_string_literal: true

module Voltaria
  module Tasks
    module Types
      class TaskPartnerStatusUpdatePayload < Internal::Types::Model
        field :task_id, -> { String }, optional: false, nullable: false
        field :status, -> { Voltaria::Tasks::Types::TaskPartnerStatusUpdatePayloadStatus }, optional: false, nullable: false
      end
    end
  end
end
