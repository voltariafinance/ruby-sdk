# frozen_string_literal: true

module Voltaria
  module Investors
    module Types
      class InvestorGetClientRequest < Internal::Types::Model
        field :client_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
