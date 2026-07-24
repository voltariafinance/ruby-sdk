# frozen_string_literal: true

module Voltaria
  module Types
    class RecoveryResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :created_at, -> { String }, optional: false, nullable: false
      field :updated_at, -> { String }, optional: false, nullable: false
      field :partner_id, -> { String }, optional: false, nullable: false
      field :client_id, -> { String }, optional: false, nullable: false
      field :loan_id, -> { String }, optional: false, nullable: false
      field :amount, -> { String }, optional: false, nullable: false
      field :currency, -> { Voltaria::Types::CurrencyEnum }, optional: false, nullable: false
      field :recovery_date, -> { String }, optional: false, nullable: false
      field :notes, -> { String }, optional: true, nullable: false
    end
  end
end
