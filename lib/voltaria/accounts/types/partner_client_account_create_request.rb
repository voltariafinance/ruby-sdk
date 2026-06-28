# frozen_string_literal: true

module Voltaria
  module Accounts
    module Types
      class PartnerClientAccountCreateRequest < Internal::Types::Model
        field :client_id, -> { String }, optional: false, nullable: false
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
        field :status, -> { Voltaria::Accounts::Types::PartnerClientAccountCreateRequestStatus }, optional: true, nullable: false
      end
    end
  end
end
