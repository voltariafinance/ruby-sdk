# frozen_string_literal: true

module Voltaria
  module Types
    class ClientLimitResponse < Internal::Types::Model
      field :currency, -> { Voltaria::Types::CurrencyEnum }, optional: false, nullable: false
      field :max_maturity_days, -> { Integer }, optional: false, nullable: false
      field :limit, -> { String }, optional: false, nullable: false
      field :rate, -> { String }, optional: false, nullable: false
      field :outstanding, -> { String }, optional: false, nullable: false
      field :available, -> { String }, optional: false, nullable: false
      field :created_at, -> { String }, optional: false, nullable: false
      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
