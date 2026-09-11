# frozen_string_literal: true

module Voltaria
  module Types
    class EarlySettlementResponse < Internal::Types::Model
      field :loan_id, -> { String }, optional: false, nullable: false
      field :settlement_date, -> { String }, optional: false, nullable: false
      field :settlement_amount, -> { String }, optional: false, nullable: false
      field :settlement_irr, -> { String }, optional: false, nullable: false
      field :original_irr, -> { String }, optional: true, nullable: false
      field :minimum_fee, -> { String }, optional: true, nullable: false
    end
  end
end
