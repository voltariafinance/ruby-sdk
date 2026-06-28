# frozen_string_literal: true

module Voltaria
  module Investors
    module Types
      class InvestorGetInstallmentRequest < Internal::Types::Model
        field :installment_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
