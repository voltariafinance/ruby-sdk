# frozen_string_literal: true

module Voltaria
  module Types
    class LoanReviewRequestResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :loan_id, -> { String }, optional: false, nullable: false
      field :client_id, -> { String }, optional: false, nullable: false
      field :status, -> { Voltaria::Types::LoanReviewRequestStatusEnum }, optional: false, nullable: false
      field :notes, -> { String }, optional: true, nullable: false
      field :response, -> { String }, optional: true, nullable: false
      field :reviewed_at, -> { String }, optional: true, nullable: false
      field :created_at, -> { String }, optional: false, nullable: false
      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
