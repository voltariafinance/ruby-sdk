# frozen_string_literal: true

module Voltaria
  module Types
    class ClientBaseInfo < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false
      field :type, -> { Voltaria::Types::ClientTypeEnum }, optional: false, nullable: false
      field :jurisdiction, -> { Voltaria::Types::JurisdictionEnum }, optional: false, nullable: false
      field :company_number, -> { String }, optional: true, nullable: false
      field :status, -> { Voltaria::Types::ClientStatusEnum }, optional: false, nullable: false
    end
  end
end
