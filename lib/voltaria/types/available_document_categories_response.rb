# frozen_string_literal: true

module Voltaria
  module Types
    class AvailableDocumentCategoriesResponse < Internal::Types::Model
      field :categories, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
