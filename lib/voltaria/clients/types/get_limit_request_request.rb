# frozen_string_literal: true

module Voltaria
  module Clients
    module Types
      class GetLimitRequestRequest < Internal::Types::Model
        field :request_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
