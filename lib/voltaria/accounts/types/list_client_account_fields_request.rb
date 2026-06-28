# frozen_string_literal: true

module Voltaria
  module Accounts
    module Types
      class ListClientAccountFieldsRequest < Internal::Types::Model
        field :client_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
