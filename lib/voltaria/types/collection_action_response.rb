# frozen_string_literal: true

module Voltaria
  module Types
    class CollectionActionResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :name, -> { String }, optional: false, nullable: false
      field :action_type, -> { Voltaria::Types::CollectionActionTypeEnum }, optional: false, nullable: false
      field :is_active, -> { Internal::Types::Boolean }, optional: false, nullable: false
      field :description, -> { String }, optional: true, nullable: false
      field :timing, -> { String }, optional: false, nullable: false
    end
  end
end
