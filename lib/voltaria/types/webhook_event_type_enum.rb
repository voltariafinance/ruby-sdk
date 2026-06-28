# frozen_string_literal: true

module Voltaria
  module Types
    module WebhookEventTypeEnum
      extend Voltaria::Internal::Types::Enum

      LOAN_UPDATED = "loan.updated"
      INSTALLMENT_UPDATED = "installment.updated"
      CLIENT_UPDATED = "client.updated"
      CLIENT_LIMIT_UPDATED = "client.limit.updated"
      PARTNER_LIMIT_UPDATED = "partner.limit.updated"
    end
  end
end
