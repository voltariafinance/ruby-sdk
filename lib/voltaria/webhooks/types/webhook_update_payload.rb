# frozen_string_literal: true

module Voltaria
  module Webhooks
    module Types
      class WebhookUpdatePayload < Internal::Types::Model
        field :webhook_id, -> { String }, optional: false, nullable: false
        field :url, -> { String }, optional: true, nullable: false
        field :description, -> { String }, optional: true, nullable: false
        field :event_type, -> { Voltaria::Types::WebhookEventTypeEnum }, optional: true, nullable: false
        field :status, -> { Voltaria::Types::WebhookStatusEnum }, optional: true, nullable: false
        field :retry_, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "retry"
        field :secret, -> { String }, optional: true, nullable: false
      end
    end
  end
end
