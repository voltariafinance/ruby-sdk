# frozen_string_literal: true

module Voltaria
  module Types
    class HTTPValidationError < Internal::Types::Model
      field :detail, -> { Internal::Types::Array[Voltaria::Types::ValidationError] }, optional: true, nullable: false
    end
  end
end
