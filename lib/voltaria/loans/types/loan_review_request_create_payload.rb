# frozen_string_literal: true

module Voltaria
  module Loans
    module Types
      class LoanReviewRequestCreatePayload < Internal::Types::Model
        field :loan_id, -> { String }, optional: false, nullable: false
        field :notes, -> { String }, optional: true, nullable: false
      end
    end
  end
end
