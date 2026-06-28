# frozen_string_literal: true

module Voltaria
  module Loans
    module Types
      class GetBulkLoanStatusRequest < Internal::Types::Model
        field :task_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
