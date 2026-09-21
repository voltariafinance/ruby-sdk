# frozen_string_literal: true

module Voltaria
  module Tasks
    module Types
      class ListTaskStatusHistoryRequest < Internal::Types::Model
        field :task_id, -> { String }, optional: false, nullable: false
        field :page, -> { Integer }, optional: true, nullable: false
        field :page_size, -> { Integer }, optional: true, nullable: false
        field :order_by, -> { String }, optional: true, nullable: false
      end
    end
  end
end
