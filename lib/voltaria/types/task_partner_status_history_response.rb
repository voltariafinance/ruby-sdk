# frozen_string_literal: true

module Voltaria
  module Types
    # One status change on a task: when it happened, what it moved from and to, and
    # who made it.
    class TaskPartnerStatusHistoryResponse < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false
      field :old_status, -> { Voltaria::Types::TaskStatusEnum }, optional: true, nullable: false
      field :new_status, -> { Voltaria::Types::TaskStatusEnum }, optional: false, nullable: false
      field :actor_type, -> { Voltaria::Types::TaskPublicActorTypeEnum }, optional: false, nullable: false
    end
  end
end
