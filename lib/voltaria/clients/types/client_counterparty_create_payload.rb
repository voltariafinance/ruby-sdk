# frozen_string_literal: true

module Voltaria
  module Clients
    module Types
      class ClientCounterpartyCreatePayload < Internal::Types::Model
        field :client_id, -> { String }, optional: false, nullable: false
        field :name, -> { String }, optional: false, nullable: false
        field :country, -> { String }, optional: true, nullable: false
        field :company_number, -> { String }, optional: true, nullable: false
        field :notes, -> { String }, optional: true, nullable: false
      end
    end
  end
end
