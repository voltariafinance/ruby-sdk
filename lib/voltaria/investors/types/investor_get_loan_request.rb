# frozen_string_literal: true

module Voltaria
  module Investors
    module Types
      class InvestorGetLoanRequest < Internal::Types::Model
        field :loan_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
