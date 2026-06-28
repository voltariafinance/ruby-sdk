# frozen_string_literal: true

module Voltaria
  module Types
    class CurrencyFieldSpec < Internal::Types::Model
      field :required, -> { Internal::Types::Array[String] }, optional: false, nullable: false
      field :optional, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
