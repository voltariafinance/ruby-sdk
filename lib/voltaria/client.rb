# frozen_string_literal: true

module Voltaria
  class Client
    # @param base_url [String, nil]
    # @param token [String]
    #
    # @return [void]
    def initialize(token:, base_url: nil)
      @raw_client = Voltaria::Internal::Http::RawClient.new(
        base_url: base_url || Voltaria::Environment::SANDBOX,
        headers: {
          "X-Fern-Language" => "Ruby",
          Authorization: "Bearer #{token}"
        }
      )
    end

    # @return [Voltaria::Clients::Client]
    def clients
      @clients ||= Voltaria::Clients::Client.new(client: @raw_client)
    end

    # @return [Voltaria::Sandbox::Client]
    def sandbox
      @sandbox ||= Voltaria::Sandbox::Client.new(client: @raw_client)
    end

    # @return [Voltaria::Accounts::Client]
    def accounts
      @accounts ||= Voltaria::Accounts::Client.new(client: @raw_client)
    end

    # @return [Voltaria::Documents::Client]
    def documents
      @documents ||= Voltaria::Documents::Client.new(client: @raw_client)
    end

    # @return [Voltaria::Investors::Client]
    def investors
      @investors ||= Voltaria::Investors::Client.new(client: @raw_client)
    end

    # @return [Voltaria::Installments::Client]
    def installments
      @installments ||= Voltaria::Installments::Client.new(client: @raw_client)
    end

    # @return [Voltaria::Loans::Client]
    def loans
      @loans ||= Voltaria::Loans::Client.new(client: @raw_client)
    end

    # @return [Voltaria::Partners::Client]
    def partners
      @partners ||= Voltaria::Partners::Client.new(client: @raw_client)
    end

    # @return [Voltaria::Webhooks::Client]
    def webhooks
      @webhooks ||= Voltaria::Webhooks::Client.new(client: @raw_client)
    end

    # @return [Voltaria::Repayments::Client]
    def repayments
      @repayments ||= Voltaria::Repayments::Client.new(client: @raw_client)
    end

    # @return [Voltaria::Drawdowns::Client]
    def drawdowns
      @drawdowns ||= Voltaria::Drawdowns::Client.new(client: @raw_client)
    end
  end
end
