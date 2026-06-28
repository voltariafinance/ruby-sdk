# frozen_string_literal: true

module Voltaria
  module Types
    class BulkLoanTaskResponse < Internal::Types::Model
      field :task_id, -> { String }, optional: false, nullable: false
      field :total_loans, -> { Integer }, optional: false, nullable: false
      field :estimated_completion_time, -> { String }, optional: false, nullable: false
    end
  end
end
