# frozen_string_literal: true

module Voltaria
  module Types
    class ChecklistSummaryPartnerResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :created_at, -> { String }, optional: false, nullable: false
      field :type, -> { Voltaria::Types::ChecklistTypeEnum }, optional: false, nullable: false
      field :ai_description, -> { String }, optional: true, nullable: false
      field :total_items, -> { Integer }, optional: false, nullable: false
      field :completed_items, -> { Integer }, optional: false, nullable: false
    end
  end
end
