=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'uri'

module CyberSource
  class MerchantBoardingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
      @api_client.set_configuration(config)
    end
    # Gets all the information on a boarding registration
    # This end point will get all information of a boarding registration 
    #
    # @param registration_id Identifies the boarding registration to be updated
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2001]
    #
    def get_registration(registration_id, opts = {})
      data, status_code, headers = get_registration_with_http_info(registration_id, opts)
      return data, status_code, headers
    end

    # Gets all the information on a boarding registration
    # This end point will get all information of a boarding registration 
    # @param registration_id Identifies the boarding registration to be updated
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2001, Fixnum, Hash)>] InlineResponse2001 data, response status code and response headers
    def get_registration_with_http_info(registration_id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: MerchantBoardingApi.get_registration ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'registration_id' is set
      if @api_client.config.client_side_validation && registration_id.nil?
        fail ArgumentError, "Missing the required parameter 'registration_id' when calling MerchantBoardingApi.get_registration"
      end
      # resource path
      local_var_path = 'boarding/v1/registrations/{registrationId}'.sub('{' + 'registrationId' + '}', registration_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

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
        :return_type => 'InlineResponse2001')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: MerchantBoardingApi#get_registration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Create a boarding registration
    # Create a registration to board merchant  If you have  Card Processing product enabled in your boarding request, select payment processor from Configuration -> Sample Request. You may unselect attributes from the Request Builder tree which you do not need in the request. For VPC, CUP and EFTPOS processors, replace the processor name from VPC or CUP or EFTPOS to the actual processor name in the sample request. e.g. replace VPC with &lt;your vpc processor&gt; 
    #
    # @param post_registration_body Boarding registration data
    # @param [Hash] opts the optional parameters
    # @option opts [String] :v_c_idempotency_id defines idempotency of the request
    # @return [InlineResponse2012]
    #
    def post_registration(post_registration_body, opts = {})
      data, status_code, headers = post_registration_with_http_info(post_registration_body, opts)
      return data, status_code, headers
    end

    # Create a boarding registration
    # Create a registration to board merchant  If you have  Card Processing product enabled in your boarding request, select payment processor from Configuration -&gt; Sample Request. You may unselect attributes from the Request Builder tree which you do not need in the request. For VPC, CUP and EFTPOS processors, replace the processor name from VPC or CUP or EFTPOS to the actual processor name in the sample request. e.g. replace VPC with &amp;lt;your vpc processor&amp;gt; 
    # @param post_registration_body Boarding registration data
    # @param [Hash] opts the optional parameters
    # @option opts [String] :v_c_idempotency_id defines idempotency of the request
    # @return [Array<(InlineResponse2012, Fixnum, Hash)>] InlineResponse2012 data, response status code and response headers
    def post_registration_with_http_info(post_registration_body, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: MerchantBoardingApi.post_registration ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'post_registration_body' is set
      if @api_client.config.client_side_validation && post_registration_body.nil?
        fail ArgumentError, "Missing the required parameter 'post_registration_body' when calling MerchantBoardingApi.post_registration"
      end
      # resource path
      local_var_path = 'boarding/v1/registrations'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'v-c-idempotency-id'] = opts[:'v_c_idempotency_id'] if !opts[:'v_c_idempotency_id'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(post_registration_body)
      sdk_tracker = SdkTracker.new
      post_body = sdk_tracker.insert_developer_id_tracker(post_body, 'PostRegistrationBody', @api_client.config.host, @api_client.merchantconfig.defaultDeveloperId)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2012')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: MerchantBoardingApi#post_registration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
  end
end
