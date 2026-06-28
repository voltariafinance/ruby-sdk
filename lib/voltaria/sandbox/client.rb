# frozen_string_literal: true

module Voltaria
  module Sandbox
    class Client
      # @param client [Voltaria::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Update an existing client's status or credit limit using their client ID.
      #
      # @param request_options [Hash]
      # @param params [Voltaria::Sandbox::Types::ClientUpdateSandbox]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :client_id
      #
      # @return [Voltaria::Types::ClientResponse]
      def update_client(request_options: {}, **params)
        params = Voltaria::Internal::Types::Utils.normalize_keys(params)
        request_data = Voltaria::Sandbox::Types::ClientUpdateSandbox.new(params).to_h
        non_body_param_names = ["client_id"]
        body = request_data.except(*non_body_param_names)

        request = Voltaria::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "v2/sandbox/clients/#{URI.encode_uri_component(params[:client_id].to_s)}",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Voltaria::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Voltaria::Types::ClientResponse.load(response.body)
        else
          error_class = Voltaria::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Update the status of a specific loan using its unique loan ID.
      #
      # @param request_options [Hash]
      # @param params [Voltaria::Sandbox::Types::LoanUpdateSandbox]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :loan_id
      #
      # @return [Voltaria::Types::LoanResponseWithInstallments]
      def update_loan(request_options: {}, **params)
        params = Voltaria::Internal::Types::Utils.normalize_keys(params)
        request_data = Voltaria::Sandbox::Types::LoanUpdateSandbox.new(params).to_h
        non_body_param_names = ["loan_id"]
        body = request_data.except(*non_body_param_names)

        request = Voltaria::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "v2/sandbox/loans/#{URI.encode_uri_component(params[:loan_id].to_s)}",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Voltaria::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Voltaria::Types::LoanResponseWithInstallments.load(response.body)
        else
          error_class = Voltaria::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Test a webhook subscription by ID or trigger all by event type.
      #
      # @param request_options [Hash]
      # @param params [Voltaria::Sandbox::Types::WebhookTestSandbox]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Hash[String, Object]]
      def webhook_test(request_options: {}, **params)
        params = Voltaria::Internal::Types::Utils.normalize_keys(params)
        request = Voltaria::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/sandbox/webhooks/trigger",
          body: Voltaria::Sandbox::Types::WebhookTestSandbox.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Voltaria::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Voltaria::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end
  end
end
