# frozen_string_literal: true

module Voltaria
  module Types
    class ValidationErrorLocItem < Internal::Types::Model
      extend Voltaria::Internal::Types::Union

      member -> { String }
      member -> { Integer }
    end
  end
end
