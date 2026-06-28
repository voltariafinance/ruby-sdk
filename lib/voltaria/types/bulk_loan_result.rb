# frozen_string_literal: true

module Voltaria
  module Types
    class BulkLoanResult < Internal::Types::Model
      field :success_count, -> { Integer }, optional: false, nullable: false
      field :failure_count, -> { Integer }, optional: false, nullable: false
      field :total_processed, -> { Integer }, optional: false, nullable: false
      field :processing_time_seconds, -> { Integer }, optional: false, nullable: false
      field :results, -> { Internal::Types::Array[Voltaria::Types::BulkLoanItemResult] }, optional: false, nullable: false
    end
  end
end
