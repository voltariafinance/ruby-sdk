# frozen_string_literal: true

module Voltaria
  module Types
    class DrawdownResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :created_at, -> { String }, optional: false, nullable: false
      field :updated_at, -> { String }, optional: false, nullable: false
      field :currency, -> { Voltaria::Types::CurrencyEnum }, optional: false, nullable: false
      field :amount, -> { String }, optional: false, nullable: false
      field :status, -> { Voltaria::Types::DrawdownStatusEnum }, optional: false, nullable: false
      field :drawdown_date, -> { String }, optional: false, nullable: false
    end
  end
end
