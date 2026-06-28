# frozen_string_literal: true

module Voltaria
  module Types
    # The request body sent to the webhook URL
    class WebhookLogResponseRequestBody < Internal::Types::Model
      extend Voltaria::Internal::Types::Union

      member -> { Internal::Types::Hash[String, Object] }
      member -> { Internal::Types::Array[Object] }
    end
  end
end
