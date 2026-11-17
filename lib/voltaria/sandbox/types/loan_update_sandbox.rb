# frozen_string_literal: true

module Voltaria
  module Sandbox
    module Types
      class LoanUpdateSandbox < Internal::Types::Model
        field :loan_id, -> { String }, optional: false, nullable: false
        field :status, -> { Voltaria::Types::LoanStatusEnum }, optional: true, nullable: false
        field :sold_at, -> { String }, optional: true, nullable: false
        field :restructured_at, -> { String }, optional: true, nullable: false
        field :defaulted_at, -> { String }, optional: true, nullable: false
      end
    end
  end
end
