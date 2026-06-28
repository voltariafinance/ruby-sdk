# frozen_string_literal: true

module Voltaria
  module Types
    # Address structure for account holder (used for USD accounts).
    class AccountAddress < Internal::Types::Model
      field :country, -> { String }, optional: false, nullable: false
      field :city, -> { String }, optional: false, nullable: false
      field :postal_code, -> { String }, optional: false, nullable: false
      field :state, -> { String }, optional: true, nullable: false
      field :line1, -> { String }, optional: false, nullable: false
    end
  end
end
