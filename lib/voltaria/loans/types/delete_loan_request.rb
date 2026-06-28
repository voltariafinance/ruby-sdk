# frozen_string_literal: true

module Voltaria
  module Loans
    module Types
      class DeleteLoanRequest < Internal::Types::Model
        field :loan_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
