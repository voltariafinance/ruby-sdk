# frozen_string_literal: true

module Voltaria
  module Clients
    module Types
      # The requested credit limit amount
      class LimitRequestCreatePayloadRequestedLimit < Internal::Types::Model
        extend Voltaria::Internal::Types::Union

        member -> { Integer }
        member -> { String }
      end
    end
  end
end
