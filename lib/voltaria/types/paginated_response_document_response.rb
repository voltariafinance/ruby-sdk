# frozen_string_literal: true

module Voltaria
  module Types
    class PaginatedResponseDocumentResponse < Internal::Types::Model
      field :items, -> { Internal::Types::Array[Voltaria::Types::DocumentResponse] }, optional: false, nullable: false
      field :page, -> { Integer }, optional: true, nullable: false
      field :page_size, -> { Integer }, optional: true, nullable: false
      field :items_in_page, -> { Integer }, optional: true, nullable: false
      field :total_items, -> { Integer }, optional: true, nullable: false
      field :total_pages, -> { Integer }, optional: true, nullable: false
      field :has_next, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :has_previous, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
