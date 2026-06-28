# frozen_string_literal: true

module Voltaria
  module Drawdowns
    module Types
      class DrawdownCreatePayload < Internal::Types::Model
        field :amount, -> { Voltaria::Drawdowns::Types::DrawdownCreatePayloadAmount }, optional: false, nullable: false
        field :drawdown_date, -> { String }, optional: true, nullable: false
      end
    end
  end
end
