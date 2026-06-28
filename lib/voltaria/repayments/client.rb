# frozen_string_literal: true

module Voltaria
  module Repayments
    class Client
      # @param client [Voltaria::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Retrieve all repayments made under your partner account. Supports filtering by client, loan, or installments.
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
      def list_repayment_logs(request_options: {}, **params)
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
          path: "v2/repayments",
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

      # Create a new repayment log for an installment. Requires the installment ID, loan ID or loan correlation ID.
      #
      # @param request_options [Hash]
      # @param params [Voltaria::Repayments::Types::RepaymentCreatePayload]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :installment_id
      # @option params [String, nil] :loan_id
      # @option params [String, nil] :correlation_id
      #
      # @return [Voltaria::Types::RepaymentResponse]
      def create_repayment(request_options: {}, **params)
        params = Voltaria::Internal::Types::Utils.normalize_keys(params)
        request_data = Voltaria::Repayments::Types::RepaymentCreatePayload.new(params).to_h
        non_body_param_names = %w[installment_id loan_id correlation_id]
        body = request_data.except(*non_body_param_names)

        query_param_names = %i[installment_id loan_id correlation_id]
        query_params = {}
        query_params["installment_id"] = params[:installment_id] if params.key?(:installment_id)
        query_params["loan_id"] = params[:loan_id] if params.key?(:loan_id)
        query_params["correlation_id"] = params[:correlation_id] if params.key?(:correlation_id)
        params.except(*query_param_names)

        request = Voltaria::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/repayments",
          query: query_params,
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
          Voltaria::Types::RepaymentResponse.load(response.body)
        else
          error_class = Voltaria::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Initiate processing of up to 10000 repayment logs. Returns task_id for tracking progress.
      #
      # @param request_options [Hash]
      # @param params [Voltaria::Repayments::Types::BulkRepaymentCreatePayload]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Voltaria::Types::BulkRepaymentTaskResponse]
      def create_bulk_repayments(request_options: {}, **params)
        params = Voltaria::Internal::Types::Utils.normalize_keys(params)
        request = Voltaria::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/repayments/bulk",
          body: Voltaria::Repayments::Types::BulkRepaymentCreatePayload.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Voltaria::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Voltaria::Types::BulkRepaymentTaskResponse.load(response.body)
        else
          error_class = Voltaria::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Check the progress and results of a bulk repayment processing task.
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
      # @return [Voltaria::Types::BulkRepaymentTaskStatus]
      def get_bulk_repayment_status(request_options: {}, **params)
        params = Voltaria::Internal::Types::Utils.normalize_keys(params)
        request = Voltaria::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/repayments/bulk/#{URI.encode_uri_component(params[:task_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Voltaria::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Voltaria::Types::BulkRepaymentTaskStatus.load(response.body)
        else
          error_class = Voltaria::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
