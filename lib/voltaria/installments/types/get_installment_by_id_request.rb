# frozen_string_literal: true

module Voltaria
  module Installments
    module Types
      class GetInstallmentByIDRequest < Internal::Types::Model
        field :installment_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
