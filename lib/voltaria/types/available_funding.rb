# frozen_string_literal: true

module Voltaria
  module Types
    class AvailableFunding < Internal::Types::Model
      field :currency, -> { Voltaria::Types::CurrencyEnum }, optional: false, nullable: false
      field :limit, -> { String }, optional: false, nullable: false
      field :later, -> { String }, optional: false, nullable: true
      field :max_maturity_days, -> { Integer }, optional: false, nullable: false
      field :rate, -> { String }, optional: false, nullable: false
      field :outstanding, -> { String }, optional: false, nullable: false
      field :available, -> { String }, optional: false, nullable: false
    end
  end
end
