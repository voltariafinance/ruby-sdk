# frozen_string_literal: true

module Voltaria
  module Clients
    module Types
      class ListClientChecklistSummariesRequest < Internal::Types::Model
        field :client_id, -> { String }, optional: false, nullable: false
        field :page, -> { Integer }, optional: true, nullable: false
        field :page_size, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
