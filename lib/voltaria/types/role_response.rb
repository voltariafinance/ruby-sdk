# frozen_string_literal: true

module Voltaria
  module Types
    class RoleResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :name, -> { String }, optional: false, nullable: false
      field :type, -> { String }, optional: false, nullable: false
    end
  end
end
