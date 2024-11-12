=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'uri'

module CyberSource
  class PayoutsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
      @api_client.set_configuration(config)
    end
    # Process a Payout
    # Send funds from a selected funding source to a designated credit/debit card account or a prepaid card using an Original Credit Transaction (OCT). 
    #
    # @param oct_create_payment_request 
    # @param [Hash] opts the optional parameters
    # @return [PtsV2PayoutsPost201Response]
    #
    def oct_create_payment(oct_create_payment_request, opts = {})
      data, status_code, headers = oct_create_payment_with_http_info(oct_create_payment_request, opts)
      return data, status_code, headers
    end

    # Process a Payout
    # Send funds from a selected funding source to a designated credit/debit card account or a prepaid card using an Original Credit Transaction (OCT). 
    # @param oct_create_payment_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PtsV2PayoutsPost201Response, Fixnum, Hash)>] PtsV2PayoutsPost201Response data, response status code and response headers
    def oct_create_payment_with_http_info(oct_create_payment_request, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: PayoutsApi.oct_create_payment ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'oct_create_payment_request' is set
      if @api_client.config.client_side_validation && oct_create_payment_request.nil?
        fail ArgumentError, "Missing the required parameter 'oct_create_payment_request' when calling PayoutsApi.oct_create_payment"
      end
      # resource path
      local_var_path = 'pts/v2/payouts'

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
      post_body = @api_client.object_to_http_body(oct_create_payment_request)
      sdk_tracker = SdkTracker.new
      post_body = sdk_tracker.insert_developer_id_tracker(post_body, 'OctCreatePaymentRequest', @api_client.config.host, @api_client.merchantconfig.defaultDeveloperId)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PtsV2PayoutsPost201Response')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: PayoutsApi#oct_create_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
  end
end
