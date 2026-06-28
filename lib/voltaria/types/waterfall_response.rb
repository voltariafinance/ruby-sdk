# frozen_string_literal: true

module Voltaria
  module Types
    class WaterfallResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :partner_id, -> { String }, optional: false, nullable: false
      field :name, -> { String }, optional: false, nullable: false
      field :date, -> { String }, optional: false, nullable: false
      field :status, -> { Voltaria::Types::WaterfallStatusEnum }, optional: false, nullable: false
      field :cash_balance, -> { String }, optional: true, nullable: false
      field :cash_balance_currency, -> { String }, optional: true, nullable: false
      field :cash_balance_date, -> { String }, optional: true, nullable: false
      field :file_url, -> { String }, optional: true, nullable: false
      field :created_at, -> { String }, optional: false, nullable: false
      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
