# frozen_string_literal: true

module Voltaria
  module Documents
    module Types
      class DocumentCreatePayload < Internal::Types::Model
        field :client_id, -> { String }, optional: true, nullable: false
        field :loan_id, -> { String }, optional: true, nullable: false
        field :installment_id, -> { String }, optional: true, nullable: false
        field :waterfall_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
