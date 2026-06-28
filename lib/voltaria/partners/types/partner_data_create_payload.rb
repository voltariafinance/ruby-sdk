# frozen_string_literal: true

module Voltaria
  module Partners
    module Types
      class PartnerDataCreatePayload < Internal::Types::Model
        field :data, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false
      end
    end
  end
end
