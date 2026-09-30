# frozen_string_literal: true

module Voltaria
  module Types
    class ClientLimitHistoryResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :created_at, -> { String }, optional: false, nullable: false
      field :currency, -> { Voltaria::Types::CurrencyEnum }, optional: false, nullable: false
      field :limit, -> { String }, optional: false, nullable: false
    end
  end
end
