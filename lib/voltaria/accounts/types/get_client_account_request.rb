# frozen_string_literal: true

module Voltaria
  module Accounts
    module Types
      class GetClientAccountRequest < Internal::Types::Model
        field :client_id, -> { String }, optional: false, nullable: false
        field :account_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
