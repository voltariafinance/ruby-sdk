# frozen_string_literal: true

module Voltaria
  module Types
    class ClientAccountResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :account_holder_name, -> { String }, optional: false, nullable: false
      field :label, -> { String }, optional: true, nullable: false
      field :account_holder_type, -> { Voltaria::Types::AccountHolderTypeEnum }, optional: false, nullable: false
      field :currency, -> { Voltaria::Types::CurrencyEnum }, optional: false, nullable: false
      field :sort_code, -> { String }, optional: true, nullable: false
      field :account_number, -> { String }, optional: true, nullable: false
      field :iban, -> { String }, optional: true, nullable: false
      field :bic, -> { String }, optional: true, nullable: false
      field :routing_number, -> { String }, optional: true, nullable: false
      field :account_type, -> { String }, optional: true, nullable: false
      field :address, -> { Voltaria::Types::AccountAddress }, optional: true, nullable: false
      field :status, -> { Voltaria::Types::AccountStatusEnum }, optional: false, nullable: false
    end
  end
end
