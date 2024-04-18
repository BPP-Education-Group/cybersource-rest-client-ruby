=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'uri'

module CyberSource
  class ConversionDetailsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
      @api_client.set_configuration(config)
    end
    # Get Conversion Detail Transactions
    # Get conversion detail of transactions for a merchant.
    #
    # @param start_time Valid report Start Time in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format.[Rfc Date Format](https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14)  **Example date format:**   - yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSZ (e.g. 2018-01-01T00:00:00.000Z) 
    # @param end_time Valid report End Time in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format.[Rfc Date Format](https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14)  **Example date format:**   - yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSZ (e.g. 2018-01-01T00:00:00.000Z) 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :organization_id Valid Organization Id
    # @return [ReportingV3ConversionDetailsGet200Response]
    #
    def get_conversion_detail(start_time, end_time, opts = {})
      data, status_code, headers = get_conversion_detail_with_http_info(start_time, end_time, opts)
      return data, status_code, headers
    end

    # Get Conversion Detail Transactions
    # Get conversion detail of transactions for a merchant.
    # @param start_time Valid report Start Time in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format.[Rfc Date Format](https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14)  **Example date format:**   - yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSZ (e.g. 2018-01-01T00:00:00.000Z) 
    # @param end_time Valid report End Time in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format.[Rfc Date Format](https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14)  **Example date format:**   - yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSZ (e.g. 2018-01-01T00:00:00.000Z) 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :organization_id Valid Organization Id
    # @return [Array<(ReportingV3ConversionDetailsGet200Response, Fixnum, Hash)>] ReportingV3ConversionDetailsGet200Response data, response status code and response headers
    def get_conversion_detail_with_http_info(start_time, end_time, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: ConversionDetailsApi.get_conversion_detail ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'start_time' is set
      if @api_client.config.client_side_validation && start_time.nil?
        fail ArgumentError, "Missing the required parameter 'start_time' when calling ConversionDetailsApi.get_conversion_detail"
      end
      # verify the required parameter 'end_time' is set
      if @api_client.config.client_side_validation && end_time.nil?
        fail ArgumentError, "Missing the required parameter 'end_time' when calling ConversionDetailsApi.get_conversion_detail"
      end
      #if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'] !~ Regexp.new(/[a-zA-Z0-9-_]+/)
        #fail ArgumentError, "invalid value for 'opts[:\"organization_id\"]' when calling ConversionDetailsApi.get_conversion_detail, must conform to the pattern /[a-zA-Z0-9-_]+/."
      #end

      # resource path
      local_var_path = 'reporting/v3/conversion-details'

      # query parameters
      query_params = {}
      query_params[:'startTime'] = start_time
      query_params[:'endTime'] = end_time
      query_params[:'organizationId'] = opts[:'organization_id'] if !opts[:'organization_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json', 'application/xml'])
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
        :return_type => 'ReportingV3ConversionDetailsGet200Response')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: ConversionDetailsApi#get_conversion_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
  end
end
