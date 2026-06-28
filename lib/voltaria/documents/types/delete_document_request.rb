# frozen_string_literal: true

module Voltaria
  module Documents
    module Types
      class DeleteDocumentRequest < Internal::Types::Model
        field :document_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
