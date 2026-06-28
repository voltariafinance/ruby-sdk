# frozen_string_literal: true

module Voltaria
  module Accounts
    module Types
      class ListClientAccountsRequest < Internal::Types::Model
        field :client_id, -> { String }, optional: false, nullable: false
        field :page, -> { Integer }, optional: true, nullable: false
        field :page_size, -> { Integer }, optional: true, nullable: false
        field :order_by, -> { String }, optional: true, nullable: false
      end
    end
  end
end
