# frozen_string_literal: true

module Voltaria
  module Webhooks
    module Types
      class ListWebhookLogsRequest < Internal::Types::Model
        field :webhook_id, -> { String }, optional: true, nullable: false
        field :page, -> { Integer }, optional: true, nullable: false
        field :page_size, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
