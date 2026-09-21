# frozen_string_literal: true

module Voltaria
  module Tasks
    module Types
      class TaskNoteCreatePayload < Internal::Types::Model
        field :task_id, -> { String }, optional: false, nullable: false
        field :content, -> { String }, optional: false, nullable: false
      end
    end
  end
end
