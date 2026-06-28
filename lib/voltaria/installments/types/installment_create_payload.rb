# frozen_string_literal: true

module Voltaria
  module Installments
    module Types
      class InstallmentCreatePayload < Internal::Types::Model
        field :loan_id, -> { String }, optional: false, nullable: false
        field :installments, -> { Internal::Types::Array[Voltaria::Types::LoanInstallmentCreatePayload] }, optional: false, nullable: false
      end
    end
  end
end
