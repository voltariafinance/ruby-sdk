# frozen_string_literal: true

module Voltaria
  module Tasks
    module Types
      class ListTasksRequest < Internal::Types::Model
        field :status, -> { Voltaria::Types::TaskStatusEnum }, optional: true, nullable: false
        field :client_id, -> { String }, optional: true, nullable: false
        field :loan_id, -> { String }, optional: true, nullable: false
        field :installment_id, -> { String }, optional: true, nullable: false
        field :waterfall_id, -> { String }, optional: true, nullable: false
        field :page, -> { Integer }, optional: true, nullable: false
        field :page_size, -> { Integer }, optional: true, nullable: false
        field :order_by, -> { String }, optional: true, nullable: false
        field :q, -> { String }, optional: true, nullable: false
      end
    end
  end
end
