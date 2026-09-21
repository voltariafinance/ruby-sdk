# frozen_string_literal: true

module Voltaria
  module Types
    # A note, with the name and email of whoever wrote it.
    class NoteResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :created_at, -> { String }, optional: false, nullable: false
      field :updated_at, -> { String }, optional: false, nullable: false
      field :content, -> { String }, optional: false, nullable: false
      field :loan_id, -> { String }, optional: true, nullable: false
      field :installment_id, -> { String }, optional: true, nullable: false
      field :author_first_name, -> { String }, optional: true, nullable: false
      field :author_last_name, -> { String }, optional: true, nullable: false
      field :author_email, -> { String }, optional: true, nullable: false
    end
  end
end
