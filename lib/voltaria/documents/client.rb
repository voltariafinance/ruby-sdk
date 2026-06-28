# frozen_string_literal: true

module Voltaria
  module Documents
    class Client
      # @param client [Voltaria::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Retrieve all documents linked to a client.
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
      # @option params [String, nil] :waterfall_id
      # @option params [Integer, nil] :page
      # @option params [Integer, nil] :page_size
      # @option params [String, nil] :order_by
      # @option params [String, nil] :q
      #
      # @return [Voltaria::Types::PaginatedResponseDocumentResponse]
      def list_documents(request_options: {}, **params)
        params = Voltaria::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[client_id loan_id installment_id waterfall_id page page_size order_by q]
        query_params = {}
        query_params["client_id"] = params[:client_id] if params.key?(:client_id)
        query_params["loan_id"] = params[:loan_id] if params.key?(:loan_id)
        query_params["installment_id"] = params[:installment_id] if params.key?(:installment_id)
        query_params["waterfall_id"] = params[:waterfall_id] if params.key?(:waterfall_id)
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["page_size"] = params[:page_size] if params.key?(:page_size)
        query_params["order_by"] = params[:order_by] if params.key?(:order_by)
        query_params["q"] = params[:q] if params.key?(:q)
        params.except(*query_param_names)

        request = Voltaria::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/documents",
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
          Voltaria::Types::PaginatedResponseDocumentResponse.load(response.body)
        else
          error_class = Voltaria::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Upload a new document related to a client or loan, such as financial statements or KYC files.
      #
      # @param request_options [Hash]
      # @param params [void]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :client_id
      # @option params [String, nil] :loan_id
      # @option params [String, nil] :installment_id
      # @option params [String, nil] :waterfall_id
      #
      # @return [Voltaria::Types::DocumentResponse]
      def upload_document(request_options: {}, **params)
        params = Voltaria::Internal::Types::Utils.normalize_keys(params)
        body = Internal::Multipart::FormData.new

        if params[:category]
          body.add(
            name: "category",
            value: params[:category]
          )
        end
        if params[:file_name]
          body.add(
            name: "file_name",
            value: params[:file_name]
          )
        end
        body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]

        request = Voltaria::Internal::Multipart::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/documents",
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
          Voltaria::Types::DocumentResponse.load(response.body)
        else
          error_class = Voltaria::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieve all available document categories.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Voltaria::Types::AvailableDocumentCategoriesResponse]
      def get_available_document_categories(request_options: {}, **params)
        Voltaria::Internal::Types::Utils.normalize_keys(params)
        request = Voltaria::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/documents/available-categories",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Voltaria::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Voltaria::Types::AvailableDocumentCategoriesResponse.load(response.body)
        else
          error_class = Voltaria::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieve details for a specific document using its document ID.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :document_id
      #
      # @return [Voltaria::Types::DocumentResponse]
      def get_document_by_id(request_options: {}, **params)
        params = Voltaria::Internal::Types::Utils.normalize_keys(params)
        request = Voltaria::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/documents/#{URI.encode_uri_component(params[:document_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Voltaria::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Voltaria::Types::DocumentResponse.load(response.body)
        else
          error_class = Voltaria::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a specific document by using its document ID.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :document_id
      #
      # @return [untyped]
      def delete_document(request_options: {}, **params)
        params = Voltaria::Internal::Types::Utils.normalize_keys(params)
        request = Voltaria::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "v2/documents/#{URI.encode_uri_component(params[:document_id].to_s)}",
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
