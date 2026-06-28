# frozen_string_literal: true

module Voltaria
  module Clients
    module Types
      class ListOnboardingClientsRequest < Internal::Types::Model
        field :page, -> { Integer }, optional: true, nullable: false
        field :page_size, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
