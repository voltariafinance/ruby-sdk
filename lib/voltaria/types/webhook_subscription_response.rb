# frozen_string_literal: true

module Voltaria
  module Types
    class WebhookSubscriptionResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :url, -> { String }, optional: false, nullable: false
      field :description, -> { String }, optional: true, nullable: false
      field :event_type, -> { Voltaria::Types::WebhookEventTypeEnum }, optional: false, nullable: false
      field :status, -> { Voltaria::Types::WebhookStatusEnum }, optional: false, nullable: false
      field :retry_, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "retry"
      field :secret, -> { String }, optional: false, nullable: false
      field :created_at, -> { String }, optional: false, nullable: false
      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
