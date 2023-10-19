=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class KeymanagementpasswordApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
      @api_client.set_configuration(config)
    end
    # Activate or De-activate Password
    # Activate or De-activate key of type password 
    # @param key_id Key ID. 
    # @param update_password_keys_request 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def update_password(key_id, update_password_keys_request, opts = {})
      data, status_code, headers = update_password_with_http_info(key_id, update_password_keys_request, opts)
      return data, status_code, headers
    end

    # Activate or De-activate Password
    # Activate or De-activate key of type password 
    # @param key_id Key ID. 
    # @param update_password_keys_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def update_password_with_http_info(key_id, update_password_keys_request, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: KeymanagementpasswordApi.update_password ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling KeymanagementpasswordApi.update_password"
      end
      # verify the required parameter 'update_password_keys_request' is set
      if @api_client.config.client_side_validation && update_password_keys_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_password_keys_request' when calling KeymanagementpasswordApi.update_password"
      end
      # resource path
      local_var_path = 'kms/v2/keys-password/{keyId}'.sub('{' + 'keyId' + '}', key_id.to_s)

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
      post_body = @api_client.object_to_http_body(update_password_keys_request)
      sdk_tracker = SdkTracker.new
      post_body = sdk_tracker.insert_developer_id_tracker(post_body, 'UpdatePasswordKeysRequest', @api_client.config.host)
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
            @api_client.config.logger.debug "API called: KeymanagementpasswordApi#update_password\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
  end
end
