# frozen_string_literal: true

module Voltaria
  module Types
    module LoanRepaymentMethodEnum
      extend Voltaria::Internal::Types::Enum

      PMT = "pmt"
      CONSTANT_PRINCIPAL = "constant_principal"
      CUSTOM = "custom"
    end
  end
end
