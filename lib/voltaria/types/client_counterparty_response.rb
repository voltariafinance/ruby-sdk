# frozen_string_literal: true

module Voltaria
  module Types
    class ClientCounterpartyResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :name, -> { String }, optional: false, nullable: false
      field :country, -> { String }, optional: true, nullable: false
      field :company_number, -> { String }, optional: true, nullable: false
      field :status, -> { Voltaria::Types::ClientCounterpartyStatusEnum }, optional: false, nullable: false
      field :created_at, -> { String }, optional: false, nullable: false
      field :updated_at, -> { String }, optional: false, nullable: false
      field :client_id, -> { String }, optional: false, nullable: false
      field :notes, -> { String }, optional: true, nullable: false
    end
  end
end
