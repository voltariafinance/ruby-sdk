# frozen_string_literal: true

module Voltaria
  module Types
    class BulkRepaymentTaskStatus < Internal::Types::Model
      field :task_id, -> { String }, optional: false, nullable: false
      field :status, -> { String }, optional: false, nullable: false
      field :current, -> { Integer }, optional: true, nullable: false
      field :total, -> { Integer }, optional: true, nullable: false
      field :result, -> { Voltaria::Types::BulkRepaymentResult }, optional: true, nullable: false
      field :error, -> { String }, optional: true, nullable: false
    end
  end
end
