# frozen_string_literal: true

module Voltaria
  module Webhooks
    module Types
      class GetWebhookSubscriptionRequest < Internal::Types::Model
        field :webhook_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
