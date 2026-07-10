# frozen_string_literal: true

module Voltaria
  module Loans
    module Types
      class GetLoanReviewRequestRequest < Internal::Types::Model
        field :request_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
