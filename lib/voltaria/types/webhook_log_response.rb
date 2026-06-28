# frozen_string_literal: true

module Voltaria
  module Types
    class WebhookLogResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :webhook_id, -> { String }, optional: false, nullable: false
      field :created_at, -> { String }, optional: false, nullable: false
      field :updated_at, -> { String }, optional: false, nullable: false
      field :event_type, -> { Voltaria::Types::WebhookEventTypeEnum }, optional: false, nullable: false
      field :webhook_url, -> { String }, optional: false, nullable: false
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
      field :status_code, -> { Integer }, optional: true, nullable: false
      field :error_message, -> { String }, optional: true, nullable: false
      field :request_duration_ms, -> { Integer }, optional: true, nullable: false
      field :request_body, -> { Voltaria::Types::WebhookLogResponseRequestBody }, optional: true, nullable: false
    end
  end
end
