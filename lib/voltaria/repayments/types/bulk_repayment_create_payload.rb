# frozen_string_literal: true

module Voltaria
  module Repayments
    module Types
      class BulkRepaymentCreatePayload < Internal::Types::Model
        field :repayments, -> { Internal::Types::Array[Voltaria::Types::BulkRepaymentItemPayload] }, optional: false, nullable: false
      end
    end
  end
end
