# frozen_string_literal: true

module Voltaria
  module Clients
    module Types
      class ClientCreatePayload < Internal::Types::Model
        field :correlation_id, -> { String }, optional: true, nullable: false
        field :name, -> { String }, optional: false, nullable: false
        field :type, -> { Voltaria::Types::ClientTypeEnum }, optional: true, nullable: false
        field :jurisdiction, -> { Voltaria::Types::JurisdictionEnum }, optional: false, nullable: false
        field :company_number, -> { String }, optional: true, nullable: false
        field :data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
      end
    end
  end
end
