# frozen_string_literal: true

module Voltaria
  module Types
    class ClientDataResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :created_at, -> { String }, optional: false, nullable: false
      field :client_id, -> { String }, optional: false, nullable: false
      field :data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
