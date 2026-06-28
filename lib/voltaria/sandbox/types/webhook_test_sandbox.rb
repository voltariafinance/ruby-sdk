# frozen_string_literal: true

module Voltaria
  module Sandbox
    module Types
      class WebhookTestSandbox < Internal::Types::Model
        field :webhook_id, -> { String }, optional: true, nullable: false
        field :event_type, -> { Voltaria::Types::WebhookEventTypeEnum }, optional: false, nullable: false
      end
    end
  end
end
