# frozen_string_literal: true

module Voltaria
  module Clients
    module Types
      class ClientUserInviteRequest < Internal::Types::Model
        field :client_id, -> { String }, optional: false, nullable: false
        field :first_name, -> { String }, optional: false, nullable: false
        field :last_name, -> { String }, optional: false, nullable: false
        field :email, -> { String }, optional: false, nullable: false
        field :phone, -> { String }, optional: true, nullable: false
        field :role_type, -> { String }, optional: false, nullable: false
      end
    end
  end
end
