# frozen_string_literal: true

module Voltaria
  module Repayments
    module Types
      class GetBulkRepaymentStatusRequest < Internal::Types::Model
        field :task_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
