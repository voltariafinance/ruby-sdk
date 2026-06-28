# frozen_string_literal: true

module Voltaria
  module Types
    class ClientInvestorResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :created_at, -> { String }, optional: false, nullable: false
      field :updated_at, -> { String }, optional: false, nullable: false
      field :correlation_id, -> { String }, optional: true, nullable: false
      field :name, -> { String }, optional: false, nullable: false
      field :type, -> { Voltaria::Types::ClientTypeEnum }, optional: false, nullable: false
      field :jurisdiction, -> { Voltaria::Types::JurisdictionEnum }, optional: false, nullable: false
      field :company_number, -> { String }, optional: true, nullable: false
      field :status, -> { Voltaria::Types::ClientStatusEnum }, optional: false, nullable: false
    end
  end
end
