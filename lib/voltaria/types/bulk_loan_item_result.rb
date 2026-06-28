# frozen_string_literal: true

module Voltaria
  module Types
    class BulkLoanItemResult < Internal::Types::Model
      field :index, -> { Integer }, optional: false, nullable: false
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
      field :loan_id, -> { String }, optional: true, nullable: false
      field :error, -> { String }, optional: true, nullable: false
      field :client_id, -> { String }, optional: true, nullable: false
      field :correlation_id, -> { String }, optional: true, nullable: false
      field :amount, -> { String }, optional: true, nullable: false
    end
  end
end
