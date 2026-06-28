# frozen_string_literal: true

module Voltaria
  module Investors
    class Client
      # @param client [Voltaria::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Retrieve all clients with at least one loan funded by this investor.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer, nil] :page
      # @option params [Integer, nil] :page_size
      # @option params [String, nil] :order_by
      # @option params [String, nil] :q
      #
      # @return [Voltaria::Types::PaginatedResponseClientInvestorResponse]
      def investor_list_clients(request_options: {}, **params)
        params = Voltaria::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[page page_size order_by q]
        query_params = {}
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["page_size"] = params[:page_size] if params.key?(:page_size)
        query_params["order_by"] = params[:order_by] if params.key?(:order_by)
        query_params["q"] = params[:q] if params.key?(:q)
        params.except(*query_param_names)

        request = Voltaria::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/investors/clients",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Voltaria::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Voltaria::Types::PaginatedResponseClientInvestorResponse.load(response.body)
        else
          error_class = Voltaria::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieve a specific client that has a loan funded by this investor.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :client_id
      #
      # @return [Voltaria::Types::ClientInvestorResponse]
      def investor_get_client(request_options: {}, **params)
        params = Voltaria::Internal::Types::Utils.normalize_keys(params)
        request = Voltaria::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/investors/clients/#{URI.encode_uri_component(params[:client_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Voltaria::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Voltaria::Types::ClientInvestorResponse.load(response.body)
        else
          error_class = Voltaria::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieve all loans funded by the current investor.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer, nil] :page
      # @option params [Integer, nil] :page_size
      # @option params [String, nil] :client_id
      # @option params [String, nil] :order_by
      # @option params [String, nil] :q
      #
      # @return [Voltaria::Types::PaginatedResponseLoanInvestorResponse]
      def investor_list_loans(request_options: {}, **params)
        params = Voltaria::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[page page_size client_id order_by q]
        query_params = {}
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["page_size"] = params[:page_size] if params.key?(:page_size)
        query_params["client_id"] = params[:client_id] if params.key?(:client_id)
        query_params["order_by"] = params[:order_by] if params.key?(:order_by)
        query_params["q"] = params[:q] if params.key?(:q)
        params.except(*query_param_names)

        request = Voltaria::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/investors/loans",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Voltaria::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Voltaria::Types::PaginatedResponseLoanInvestorResponse.load(response.body)
        else
          error_class = Voltaria::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieve a specific loan funded by the current investor, with its installments.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :loan_id
      #
      # @return [Voltaria::Types::LoanResponseWithInstallments]
      def investor_get_loan(request_options: {}, **params)
        params = Voltaria::Internal::Types::Utils.normalize_keys(params)
        request = Voltaria::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/investors/loans/#{URI.encode_uri_component(params[:loan_id].to_s)}",
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

      # Retrieve all installments for loans funded by the current investor.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer, nil] :page
      # @option params [Integer, nil] :page_size
      # @option params [String, nil] :client_id
      # @option params [String, nil] :loan_id
      # @option params [String, nil] :order_by
      # @option params [String, nil] :q
      #
      # @return [Voltaria::Types::PaginatedResponseInstallmentResponseWithClientInfo]
      def investor_list_installments(request_options: {}, **params)
        params = Voltaria::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[page page_size client_id loan_id order_by q]
        query_params = {}
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["page_size"] = params[:page_size] if params.key?(:page_size)
        query_params["client_id"] = params[:client_id] if params.key?(:client_id)
        query_params["loan_id"] = params[:loan_id] if params.key?(:loan_id)
        query_params["order_by"] = params[:order_by] if params.key?(:order_by)
        query_params["q"] = params[:q] if params.key?(:q)
        params.except(*query_param_names)

        request = Voltaria::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/investors/installments",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Voltaria::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Voltaria::Types::PaginatedResponseInstallmentResponseWithClientInfo.load(response.body)
        else
          error_class = Voltaria::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieve a specific installment for a loan funded by the current investor.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :installment_id
      #
      # @return [Voltaria::Types::InstallmentResponse]
      def investor_get_installment(request_options: {}, **params)
        params = Voltaria::Internal::Types::Utils.normalize_keys(params)
        request = Voltaria::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/investors/installments/#{URI.encode_uri_component(params[:installment_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Voltaria::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Voltaria::Types::InstallmentResponse.load(response.body)
        else
          error_class = Voltaria::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieve all repayment logs for loans funded by the current investor.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :client_id
      # @option params [String, nil] :loan_id
      # @option params [String, nil] :installment_id
      # @option params [Integer, nil] :page
      # @option params [Integer, nil] :page_size
      # @option params [String, nil] :order_by
      # @option params [String, nil] :q
      #
      # @return [Voltaria::Types::PaginatedResponseRepaymentResponseWithClientInfo]
      def investor_list_repayments(request_options: {}, **params)
        params = Voltaria::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[client_id loan_id installment_id page page_size order_by q]
        query_params = {}
        query_params["client_id"] = params[:client_id] if params.key?(:client_id)
        query_params["loan_id"] = params[:loan_id] if params.key?(:loan_id)
        query_params["installment_id"] = params[:installment_id] if params.key?(:installment_id)
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["page_size"] = params[:page_size] if params.key?(:page_size)
        query_params["order_by"] = params[:order_by] if params.key?(:order_by)
        query_params["q"] = params[:q] if params.key?(:q)
        params.except(*query_param_names)

        request = Voltaria::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/investors/repayments",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Voltaria::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Voltaria::Types::PaginatedResponseRepaymentResponseWithClientInfo.load(response.body)
        else
          error_class = Voltaria::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
