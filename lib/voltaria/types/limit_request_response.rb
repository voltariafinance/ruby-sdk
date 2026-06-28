# frozen_string_literal: true

module Voltaria
  module Types
    class LimitRequestResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :client_id, -> { String }, optional: false, nullable: false
      field :status, -> { Voltaria::Types::LimitRequestStatusEnum }, optional: false, nullable: false
      field :requested_limit, -> { String }, optional: false, nullable: false
      field :reason, -> { String }, optional: false, nullable: false
      field :response, -> { String }, optional: true, nullable: false
      field :waiver_id, -> { String }, optional: true, nullable: false
      field :created_at, -> { String }, optional: false, nullable: false
    end
  end
end
