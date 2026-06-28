# frozen_string_literal: true

module Voltaria
  module Types
    class WaiverResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :client_id, -> { String }, optional: false, nullable: false
      field :loan_id, -> { String }, optional: true, nullable: false
      field :limit_request_id, -> { String }, optional: true, nullable: false
      field :status, -> { Voltaria::Types::WaiverStatusEnum }, optional: false, nullable: false
      field :waiver_date, -> { String }, optional: false, nullable: false
      field :currency, -> { Voltaria::Types::CurrencyEnum }, optional: false, nullable: false
      field :amount, -> { String }, optional: false, nullable: false
      field :notes, -> { String }, optional: true, nullable: false
      field :created_at, -> { String }, optional: false, nullable: false
    end
  end
end
