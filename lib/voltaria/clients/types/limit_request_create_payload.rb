# frozen_string_literal: true

module Voltaria
  module Clients
    module Types
      class LimitRequestCreatePayload < Internal::Types::Model
        field :client_id, -> { String }, optional: false, nullable: false
        field :requested_limit, -> { Voltaria::Clients::Types::LimitRequestCreatePayloadRequestedLimit }, optional: false, nullable: false
        field :reason, -> { String }, optional: false, nullable: false
        field :waiver_request, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
