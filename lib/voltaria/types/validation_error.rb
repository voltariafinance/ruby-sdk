# frozen_string_literal: true

module Voltaria
  module Types
    class ValidationError < Internal::Types::Model
      field :loc, -> { Internal::Types::Array[Voltaria::Types::ValidationErrorLocItem] }, optional: false, nullable: false
      field :msg, -> { String }, optional: false, nullable: false
      field :type, -> { String }, optional: false, nullable: false
      field :input, -> { Object }, optional: true, nullable: false
      field :ctx, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
