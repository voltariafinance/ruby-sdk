# frozen_string_literal: true

module Voltaria
  module Collections
    class Client
      # @param client [Voltaria::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Retrieve all collection actions configured for your partner account.
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
      # @return [Voltaria::Types::PaginatedResponseCollectionActionResponse]
      def list_collection_actions(request_options: {}, **params)
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
          path: "v2/collection-actions",
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
          Voltaria::Types::PaginatedResponseCollectionActionResponse.load(response.body)
        else
          error_class = Voltaria::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieve collection action logs for your partner account. Supports filtering by client, loan, installment,
      # status, or action type.
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
      # @option params [Voltaria::Types::CollectionActionStatusEnum, nil] :status
      # @option params [Voltaria::Types::CollectionActionTypeEnum, nil] :action_type
      # @option params [Integer, nil] :page
      # @option params [Integer, nil] :page_size
      # @option params [String, nil] :order_by
      # @option params [String, nil] :q
      #
      # @return [Voltaria::Types::PaginatedResponseCollectionActionLogResponse]
      def list_collection_action_logs(request_options: {}, **params)
        params = Voltaria::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[client_id loan_id installment_id status action_type page page_size order_by q]
        query_params = {}
        query_params["client_id"] = params[:client_id] if params.key?(:client_id)
        query_params["loan_id"] = params[:loan_id] if params.key?(:loan_id)
        query_params["installment_id"] = params[:installment_id] if params.key?(:installment_id)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["action_type"] = params[:action_type] if params.key?(:action_type)
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["page_size"] = params[:page_size] if params.key?(:page_size)
        query_params["order_by"] = params[:order_by] if params.key?(:order_by)
        query_params["q"] = params[:q] if params.key?(:q)
        params.except(*query_param_names)

        request = Voltaria::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/collection-actions/logs",
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
          Voltaria::Types::PaginatedResponseCollectionActionLogResponse.load(response.body)
        else
          error_class = Voltaria::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Update the status and notes of a collection action log.
      #
      # @param request_options [Hash]
      # @param params [Voltaria::Collections::Types::CollectionActionLogUpdatePayload]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :log_id
      #
      # @return [Voltaria::Types::CollectionActionLogResponse]
      def update_collection_action_log(request_options: {}, **params)
        params = Voltaria::Internal::Types::Utils.normalize_keys(params)
        request_data = Voltaria::Collections::Types::CollectionActionLogUpdatePayload.new(params).to_h
        non_body_param_names = ["log_id"]
        body = request_data.except(*non_body_param_names)

        request = Voltaria::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "v2/collection-actions/logs/#{URI.encode_uri_component(params[:log_id].to_s)}",
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
          Voltaria::Types::CollectionActionLogResponse.load(response.body)
        else
          error_class = Voltaria::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
