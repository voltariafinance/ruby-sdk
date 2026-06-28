# frozen_string_literal: true

module Voltaria
  module Types
    class DrawdownChecklistResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :created_at, -> { String }, optional: false, nullable: false
      field :updated_at, -> { String }, optional: false, nullable: false
      field :drawdown_id, -> { String }, optional: false, nullable: false
      field :name, -> { String }, optional: false, nullable: false
      field :description, -> { String }, optional: true, nullable: false
      field :priority, -> { Integer }, optional: false, nullable: false
      field :is_checked, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
