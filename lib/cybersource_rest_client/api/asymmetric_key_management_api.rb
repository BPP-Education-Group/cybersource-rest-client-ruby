=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'uri'

module CyberSource
  class AsymmetricKeyManagementApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
      @api_client.set_configuration(config)
    end
    # Create one or more PKCS12 keys
    # 'Create one or more PKCS12 keys' 
    #
    # @param create_p12_keys_request 
    # @param [Hash] opts the optional parameters
    # @return [KmsV2KeysAsymPost201Response]
    #
    def create_p12_keys(create_p12_keys_request, opts = {})
      data, status_code, headers = create_p12_keys_with_http_info(create_p12_keys_request, opts)
      return data, status_code, headers
    end

    # Create one or more PKCS12 keys
    # &#39;Create one or more PKCS12 keys&#39; 
    # @param create_p12_keys_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(KmsV2KeysAsymPost201Response, Fixnum, Hash)>] KmsV2KeysAsymPost201Response data, response status code and response headers
    def create_p12_keys_with_http_info(create_p12_keys_request, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: AsymmetricKeyManagementApi.create_p12_keys ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'create_p12_keys_request' is set
      if @api_client.config.client_side_validation && create_p12_keys_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_p12_keys_request' when calling AsymmetricKeyManagementApi.create_p12_keys"
      end
      # resource path
      local_var_path = 'kms/v2/keys-asym'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(create_p12_keys_request)
      sdk_tracker = SdkTracker.new
      post_body = sdk_tracker.insert_developer_id_tracker(post_body, 'CreateP12KeysRequest', @api_client.config.host)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'KmsV2KeysAsymPost201Response')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: AsymmetricKeyManagementApi#create_p12_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Delete one or more PKCS12 keys
    # 'Delete one or more PKCS12 keys' 
    #
    # @param delete_bulk_p12_keys_request 
    # @param [Hash] opts the optional parameters
    # @return [KmsV2KeysAsymDeletesPost200Response]
    #
    def delete_bulk_p12_keys(delete_bulk_p12_keys_request, opts = {})
      data, status_code, headers = delete_bulk_p12_keys_with_http_info(delete_bulk_p12_keys_request, opts)
      return data, status_code, headers
    end

    # Delete one or more PKCS12 keys
    # &#39;Delete one or more PKCS12 keys&#39; 
    # @param delete_bulk_p12_keys_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(KmsV2KeysAsymDeletesPost200Response, Fixnum, Hash)>] KmsV2KeysAsymDeletesPost200Response data, response status code and response headers
    def delete_bulk_p12_keys_with_http_info(delete_bulk_p12_keys_request, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: AsymmetricKeyManagementApi.delete_bulk_p12_keys ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'delete_bulk_p12_keys_request' is set
      if @api_client.config.client_side_validation && delete_bulk_p12_keys_request.nil?
        fail ArgumentError, "Missing the required parameter 'delete_bulk_p12_keys_request' when calling AsymmetricKeyManagementApi.delete_bulk_p12_keys"
      end
      # resource path
      local_var_path = 'kms/v2/keys-asym/deletes'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(delete_bulk_p12_keys_request)
      sdk_tracker = SdkTracker.new
      post_body = sdk_tracker.insert_developer_id_tracker(post_body, 'DeleteBulkP12KeysRequest', @api_client.config.host)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'KmsV2KeysAsymDeletesPost200Response')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: AsymmetricKeyManagementApi#delete_bulk_p12_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Retrieves PKCS12 key details
    # Retrieves keys details by providing the key id.
    #
    # @param key_id Key ID. 
    # @param [Hash] opts the optional parameters
    # @return [KmsV2KeysAsymGet200Response]
    #
    def get_p12_key_details(key_id, opts = {})
      data, status_code, headers = get_p12_key_details_with_http_info(key_id, opts)
      return data, status_code, headers
    end

    # Retrieves PKCS12 key details
    # Retrieves keys details by providing the key id.
    # @param key_id Key ID. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(KmsV2KeysAsymGet200Response, Fixnum, Hash)>] KmsV2KeysAsymGet200Response data, response status code and response headers
    def get_p12_key_details_with_http_info(key_id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: AsymmetricKeyManagementApi.get_p12_key_details ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling AsymmetricKeyManagementApi.get_p12_key_details"
      end
      # resource path
      local_var_path = 'kms/v2/keys-asym/{keyId}'.sub('{' + 'keyId' + '}', key_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      if 'GET' == 'POST'
        post_body = '{}'
      else
        post_body = nil
      end
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'KmsV2KeysAsymGet200Response')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: AsymmetricKeyManagementApi#get_p12_key_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Activate or De-activate Asymmetric Key
    # Activate or De-activate Asymmetric Key 
    #
    # @param key_id Key ID. 
    # @param update_asym_keys_request 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    #
    def update_asym_key(key_id, update_asym_keys_request, opts = {})
      data, status_code, headers = update_asym_key_with_http_info(key_id, update_asym_keys_request, opts)
      return data, status_code, headers
    end

    # Activate or De-activate Asymmetric Key
    # Activate or De-activate Asymmetric Key 
    # @param key_id Key ID. 
    # @param update_asym_keys_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def update_asym_key_with_http_info(key_id, update_asym_keys_request, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: AsymmetricKeyManagementApi.update_asym_key ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling AsymmetricKeyManagementApi.update_asym_key"
      end
      # verify the required parameter 'update_asym_keys_request' is set
      if @api_client.config.client_side_validation && update_asym_keys_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_asym_keys_request' when calling AsymmetricKeyManagementApi.update_asym_key"
      end
      # resource path
      local_var_path = 'kms/v2/keys-asym/{keyId}'.sub('{' + 'keyId' + '}', key_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(update_asym_keys_request)
      sdk_tracker = SdkTracker.new
      post_body = sdk_tracker.insert_developer_id_tracker(post_body, 'UpdateAsymKeysRequest', @api_client.config.host)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: AsymmetricKeyManagementApi#update_asym_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
  end
end
