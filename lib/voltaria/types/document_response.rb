# frozen_string_literal: true

module Voltaria
  module Types
    class DocumentResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :category, -> { String }, optional: false, nullable: false
      field :file_name, -> { String }, optional: false, nullable: false
      field :file_type, -> { String }, optional: false, nullable: false
      field :client_id, -> { String }, optional: true, nullable: false
      field :file_url, -> { String }, optional: true, nullable: false
      field :loan_id, -> { String }, optional: true, nullable: false
      field :installment_id, -> { String }, optional: true, nullable: false
      field :folder_path, -> { String }, optional: true, nullable: false
      field :document_date, -> { String }, optional: true, nullable: false
      field :expiry_date, -> { String }, optional: true, nullable: false
      field :created_at, -> { String }, optional: false, nullable: false
    end
  end
end
