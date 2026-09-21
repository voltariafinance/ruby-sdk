# frozen_string_literal: true

module Voltaria
  module Types
    # A task shared with your partner account.
    class TaskPartnerResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :title, -> { String }, optional: false, nullable: false
      field :description, -> { String }, optional: true, nullable: false
      field :status, -> { Voltaria::Types::TaskStatusEnum }, optional: false, nullable: false
      field :priority, -> { Voltaria::Types::TaskPriorityEnum }, optional: true, nullable: false
      field :assignee_id, -> { String }, optional: true, nullable: false
      field :due_at, -> { String }, optional: true, nullable: false
      field :completed_at, -> { String }, optional: true, nullable: false
      field :created_at, -> { String }, optional: false, nullable: false
      field :updated_at, -> { String }, optional: false, nullable: false
      field :partner_id, -> { String }, optional: true, nullable: false
      field :client_id, -> { String }, optional: true, nullable: false
      field :loan_id, -> { String }, optional: true, nullable: false
      field :installment_id, -> { String }, optional: true, nullable: false
      field :waterfall_id, -> { String }, optional: true, nullable: false
    end
  end
end
