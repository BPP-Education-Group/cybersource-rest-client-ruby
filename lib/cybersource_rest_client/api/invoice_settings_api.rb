=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'uri'

module CyberSource
  class InvoiceSettingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
      @api_client.set_configuration(config)
    end
    # Get Invoice Settings
    # Allows you to retrieve the invoice settings for the payment page.
    #
    # @param [Hash] opts the optional parameters
    # @return [InvoicingV2InvoiceSettingsGet200Response]
    #
    def get_invoice_settings(opts = {})
      data, status_code, headers = get_invoice_settings_with_http_info(opts)
      return data, status_code, headers
    end

    # Get Invoice Settings
    # Allows you to retrieve the invoice settings for the payment page.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InvoicingV2InvoiceSettingsGet200Response, Fixnum, Hash)>] InvoicingV2InvoiceSettingsGet200Response data, response status code and response headers
    def get_invoice_settings_with_http_info(opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: InvoiceSettingsApi.get_invoice_settings ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # resource path
      local_var_path = 'invoicing/v2/invoiceSettings'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/hal+json', 'application/json;charset=utf-8', 'application/hal+json;charset=utf-8'])
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
        :return_type => 'InvoicingV2InvoiceSettingsGet200Response')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: InvoiceSettingsApi#get_invoice_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Update Invoice Settings
    # Allows you to customize the payment page, the checkout experience, email communication and payer authentication. You can customize the invoice to match your brand with your business name, logo and brand colors, and a VAT Tax number. You can choose to capture the payers shipping details, phone number and email during the checkout process. You can add a custom message to all invoice emails and enable or disable payer authentication for invoice payments.
    #
    # @param invoice_settings_request 
    # @param [Hash] opts the optional parameters
    # @return [InvoicingV2InvoiceSettingsGet200Response]
    #
    def update_invoice_settings(invoice_settings_request, opts = {})
      data, status_code, headers = update_invoice_settings_with_http_info(invoice_settings_request, opts)
      return data, status_code, headers
    end

    # Update Invoice Settings
    # Allows you to customize the payment page, the checkout experience, email communication and payer authentication. You can customize the invoice to match your brand with your business name, logo and brand colors, and a VAT Tax number. You can choose to capture the payers shipping details, phone number and email during the checkout process. You can add a custom message to all invoice emails and enable or disable payer authentication for invoice payments.
    # @param invoice_settings_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InvoicingV2InvoiceSettingsGet200Response, Fixnum, Hash)>] InvoicingV2InvoiceSettingsGet200Response data, response status code and response headers
    def update_invoice_settings_with_http_info(invoice_settings_request, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: InvoiceSettingsApi.update_invoice_settings ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'invoice_settings_request' is set
      if @api_client.config.client_side_validation && invoice_settings_request.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_settings_request' when calling InvoiceSettingsApi.update_invoice_settings"
      end
      # resource path
      local_var_path = 'invoicing/v2/invoiceSettings'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/hal+json', 'application/json;charset=utf-8', 'application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(invoice_settings_request)
      sdk_tracker = SdkTracker.new
      post_body = sdk_tracker.insert_developer_id_tracker(post_body, 'InvoiceSettingsRequest', @api_client.config.host, @api_client.merchantconfig.defaultDeveloperId)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InvoicingV2InvoiceSettingsGet200Response')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: InvoiceSettingsApi#update_invoice_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
  end
end
