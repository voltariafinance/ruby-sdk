# frozen_string_literal: true

module Voltaria
  module Partners
    module Types
      class ListPartnerWaterfallsRequest < Internal::Types::Model
        field :page, -> { Integer }, optional: true, nullable: false
        field :page_size, -> { Integer }, optional: true, nullable: false
        field :order_by, -> { String }, optional: true, nullable: false
        field :q, -> { String }, optional: true, nullable: false
      end
    end
  end
end
