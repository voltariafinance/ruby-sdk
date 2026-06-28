# frozen_string_literal: true

module Voltaria
  module Loans
    class Client
      # @param client [Voltaria::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Retrieve all loans associated with your partner account. Supports optional filtering by client ID.
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
      # @return [Voltaria::Types::PaginatedResponseLoanResponseWithClientInfo]
      def list_loans(request_options: {}, **params)
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
          path: "v2/loans",
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
          Voltaria::Types::PaginatedResponseLoanResponseWithClientInfo.load(response.body)
        else
          error_class = Voltaria::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Create a new loan for an approved client with an active credit limit.
      #
      # @param request_options [Hash]
      # @param params [Voltaria::Loans::Types::LoanCreatePayload]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Voltaria::Types::LoanResponseWithInstallments]
      def create_loan(request_options: {}, **params)
        params = Voltaria::Internal::Types::Utils.normalize_keys(params)
        request = Voltaria::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/loans",
          body: Voltaria::Loans::Types::LoanCreatePayload.new(params).to_h,
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

      # Retrieve detailed information about a specific loan by its loan ID.
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
      def get_loan_by_id(request_options: {}, **params)
        params = Voltaria::Internal::Types::Utils.normalize_keys(params)
        request = Voltaria::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/loans/#{URI.encode_uri_component(params[:loan_id].to_s)}",
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

      # Delete a loan by ID. Only loans with 'pending' status can be deleted.
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
      # @return [Hash[String, Object], nil]
      def delete_loan(request_options: {}, **params)
        params = Voltaria::Internal::Types::Utils.normalize_keys(params)
        request = Voltaria::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "v2/loans/#{URI.encode_uri_component(params[:loan_id].to_s)}",
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

      # Create multiple loans in a single request. Processing happens asynchronously. Returns a task ID for tracking
      # progress.
      #
      # @param request_options [Hash]
      # @param params [Voltaria::Loans::Types::BulkLoanCreatePayload]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Voltaria::Types::BulkLoanTaskResponse]
      def create_bulk_loans(request_options: {}, **params)
        params = Voltaria::Internal::Types::Utils.normalize_keys(params)
        request = Voltaria::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/loans/bulk",
          body: Voltaria::Loans::Types::BulkLoanCreatePayload.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Voltaria::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Voltaria::Types::BulkLoanTaskResponse.load(response.body)
        else
          error_class = Voltaria::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Check the status of a bulk loan creation task and retrieve results when completed.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :task_id
      #
      # @return [Voltaria::Types::BulkLoanTaskStatus]
      def get_bulk_loan_status(request_options: {}, **params)
        params = Voltaria::Internal::Types::Utils.normalize_keys(params)
        request = Voltaria::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/loans/bulk/#{URI.encode_uri_component(params[:task_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Voltaria::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Voltaria::Types::BulkLoanTaskStatus.load(response.body)
        else
          error_class = Voltaria::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Mark a loan as defaulted, recording the default date and the amount recovered from selling it. Defaults the
      # loan's active and overdue installments and updates the loan status accordingly.
      #
      # @param request_options [Hash]
      # @param params [Voltaria::Loans::Types::LoanDefaultPayload]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :loan_id
      #
      # @return [Voltaria::Types::LoanResponseWithInstallments]
      def set_loan_default(request_options: {}, **params)
        params = Voltaria::Internal::Types::Utils.normalize_keys(params)
        request_data = Voltaria::Loans::Types::LoanDefaultPayload.new(params).to_h
        non_body_param_names = ["loan_id"]
        body = request_data.except(*non_body_param_names)

        request = Voltaria::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/loans/#{URI.encode_uri_component(params[:loan_id].to_s)}/set-default",
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
    end
  end
end
