# frozen_string_literal: true

module Voltaria
  module Clients
    module Types
      class ApproveOnboardingRequest < Internal::Types::Model
        field :client_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
