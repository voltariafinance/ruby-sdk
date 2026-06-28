# frozen_string_literal: true

module Voltaria
  module Webhooks
    module Types
      class ListWebhookSubscriptionsRequest < Internal::Types::Model
        field :page, -> { Integer }, optional: true, nullable: false
        field :page_size, -> { Integer }, optional: true, nullable: false
        field :event_type, -> { Voltaria::Types::WebhookEventTypeEnum }, optional: true, nullable: false
      end
    end
  end
end
