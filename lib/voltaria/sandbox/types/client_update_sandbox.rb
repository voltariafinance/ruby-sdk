# frozen_string_literal: true

module Voltaria
  module Sandbox
    module Types
      class ClientUpdateSandbox < Internal::Types::Model
        field :client_id, -> { String }, optional: false, nullable: false
        field :status, -> { Voltaria::Types::ClientStatusEnum }, optional: true, nullable: false
        field :limit, -> { Voltaria::Sandbox::Types::ClientUpdateSandboxLimit }, optional: true, nullable: false
      end
    end
  end
end
