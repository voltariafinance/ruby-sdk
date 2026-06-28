# frozen_string_literal: true

module Voltaria
  module Webhooks
    module Types
      class WebhookCreatePayload < Internal::Types::Model
        field :url, -> { String }, optional: false, nullable: false
        field :description, -> { String }, optional: true, nullable: false
        field :event_type, -> { Voltaria::Types::WebhookEventTypeEnum }, optional: false, nullable: false
        field :secret, -> { String }, optional: false, nullable: false
        field :retry_, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "retry"
        field :status, -> { Voltaria::Types::WebhookStatusEnum }, optional: true, nullable: false
      end
    end
  end
end
