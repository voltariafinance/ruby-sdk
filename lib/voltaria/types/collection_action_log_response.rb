# frozen_string_literal: true

module Voltaria
  module Types
    class CollectionActionLogResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :collection_action_id, -> { String }, optional: false, nullable: false
      field :action_type, -> { Voltaria::Types::CollectionActionTypeEnum }, optional: false, nullable: false
      field :action_name, -> { String }, optional: false, nullable: false
      field :status, -> { Voltaria::Types::CollectionActionStatusEnum }, optional: false, nullable: false
      field :client_id, -> { String }, optional: false, nullable: false
      field :loan_id, -> { String }, optional: false, nullable: false
      field :installment_id, -> { String }, optional: false, nullable: false
      field :flag, -> { Internal::Types::Boolean }, optional: false, nullable: false
      field :notes, -> { String }, optional: true, nullable: false
      field :scheduled_for, -> { String }, optional: false, nullable: false
    end
  end
end
