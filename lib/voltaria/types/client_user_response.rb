# frozen_string_literal: true

module Voltaria
  module Types
    class ClientUserResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :partner_id, -> { String }, optional: false, nullable: false
      field :client_id, -> { String }, optional: false, nullable: false
      field :email, -> { String }, optional: false, nullable: false
      field :role_id, -> { String }, optional: false, nullable: false
      field :role, -> { Voltaria::Types::RoleResponse }, optional: true, nullable: false
      field :status, -> { Voltaria::Types::ClientUserStatusEnum }, optional: false, nullable: false
      field :is_email_verified, -> { Internal::Types::Boolean }, optional: false, nullable: false
      field :kyc_status, -> { Voltaria::Types::KycStatusEnum }, optional: false, nullable: false
      field :first_name, -> { String }, optional: true, nullable: false
      field :last_name, -> { String }, optional: true, nullable: false
      field :phone, -> { String }, optional: true, nullable: false
      field :is2fa_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "is_2fa_enabled"
      field :is2fa_required, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "is_2fa_required"
      field :created_at, -> { String }, optional: false, nullable: false
      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
