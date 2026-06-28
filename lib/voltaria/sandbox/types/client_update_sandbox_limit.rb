# frozen_string_literal: true

module Voltaria
  module Sandbox
    module Types
      # The limit to set for the client. This will override the existing limit.
      class ClientUpdateSandboxLimit < Internal::Types::Model
        extend Voltaria::Internal::Types::Union

        member -> { Integer }
        member -> { String }
      end
    end
  end
end
