# frozen_string_literal: true

module Voltaria
  module Types
    class LoanInstallmentResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :amount, -> { String }, optional: false, nullable: false
      field :installment_number, -> { Integer }, optional: false, nullable: false
      field :expected_repayment_at, -> { String }, optional: false, nullable: false
      field :status, -> { Voltaria::Types::LoanStatusEnum }, optional: false, nullable: false
      field :created_at, -> { String }, optional: false, nullable: false
      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
