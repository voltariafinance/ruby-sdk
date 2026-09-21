# frozen_string_literal: true

module Voltaria
  module Tasks
    module Types
      class TaskPartnerCreatePayload < Internal::Types::Model
        field :title, -> { String }, optional: false, nullable: false
        field :description, -> { String }, optional: true, nullable: false
        field :priority, -> { Voltaria::Types::TaskPriorityEnum }, optional: true, nullable: false
        field :due_at, -> { String }, optional: true, nullable: false
        field :client_id, -> { String }, optional: true, nullable: false
        field :loan_id, -> { String }, optional: true, nullable: false
        field :installment_id, -> { String }, optional: true, nullable: false
        field :waterfall_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
