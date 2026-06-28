# frozen_string_literal: true

module Voltaria
  module Clients
    module Types
      class ClientDataCreatePayload < Internal::Types::Model
        field :client_id, -> { String }, optional: false, nullable: false
        field :data, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false
      end
    end
  end
end
