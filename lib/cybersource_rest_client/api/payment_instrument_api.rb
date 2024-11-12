=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'uri'

module CyberSource
  class PaymentInstrumentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
      @api_client.set_configuration(config)
    end
    # Delete a Payment Instrument
    # |  |  |  | | --- | --- | --- | |**Standalone Payment Instruments**<br>A Payment Instrument represents tokenized payment information such as expiration date, billing address & card type.<br>A Payment Instrument token does not store the card number. A Payment Instrument is associated with an [Instrument Identifier](#token-management_instrument-identifier_create-an-instrument-identifier) that represents either a payment card number, or in the case of an ACH bank account, the routing and account number.<br>**Standalone Payment Instruments do not belong to a [Customer](#token-management_customer_create-a-customer).**|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|**Deleting a Payment Instrument**<br>Your system can use this API to delete an existing Payment Instrument.<br>Any Instrument Identifiers representing the card number will also be deleted if they are not associated with any other Payment Instruments. 
    #
    # @param payment_instrument_id The Id of a payment instrument.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
    # @return [nil]
    #
    def delete_payment_instrument(payment_instrument_id, opts = {})
      data, status_code, headers = delete_payment_instrument_with_http_info(payment_instrument_id, opts)
      return data, status_code, headers
    end

    # Delete a Payment Instrument
    # |  |  |  | | --- | --- | --- | |**Standalone Payment Instruments**&lt;br&gt;A Payment Instrument represents tokenized payment information such as expiration date, billing address &amp; card type.&lt;br&gt;A Payment Instrument token does not store the card number. A Payment Instrument is associated with an [Instrument Identifier](#token-management_instrument-identifier_create-an-instrument-identifier) that represents either a payment card number, or in the case of an ACH bank account, the routing and account number.&lt;br&gt;**Standalone Payment Instruments do not belong to a [Customer](#token-management_customer_create-a-customer).**|&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;|**Deleting a Payment Instrument**&lt;br&gt;Your system can use this API to delete an existing Payment Instrument.&lt;br&gt;Any Instrument Identifiers representing the card number will also be deleted if they are not associated with any other Payment Instruments. 
    # @param payment_instrument_id The Id of a payment instrument.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_payment_instrument_with_http_info(payment_instrument_id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: PaymentInstrumentApi.delete_payment_instrument ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'payment_instrument_id' is set
      if @api_client.config.client_side_validation && payment_instrument_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_instrument_id' when calling PaymentInstrumentApi.delete_payment_instrument"
      end
      # resource path
      local_var_path = 'tms/v1/paymentinstruments/{paymentInstrumentId}'.sub('{' + 'paymentInstrumentId' + '}', payment_instrument_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])
      header_params[:'profile-id'] = opts[:'profile_id'] if !opts[:'profile_id'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      if 'DELETE' == 'POST'
        post_body = '{}'
      else
        post_body = nil
      end
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: PaymentInstrumentApi#delete_payment_instrument\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Retrieve a Payment Instrument
    # |  |  |  | | --- | --- | --- | |**Standalone Payment Instruments**<br>A Payment Instrument represents tokenized payment information such as expiration date, billing address & card type.<br>A Payment Instrument token does not store the card number. A Payment Instrument is associated with an [Instrument Identifier](#token-management_instrument-identifier_create-an-instrument-identifier) that represents either a payment card number, or in the case of an ACH bank account, the routing and account number.<br>**Standalone Payment Instruments do not belong to a [Customer](#token-management_customer_create-a-customer).**|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|**Retrieving a Payment Instrument**<br>Your system can use this API to retrieve an existing Payment Instrument.<br>To perform a payment with a particular Payment Instrument simply specify the [Payment Instrument Id in the payments request](#payments_payments_process-a-payment_samplerequests-dropdown_authorization-using-tokens_authorization-with-customer-payment-instrument-and-shipping-address-token-id_liveconsole-tab-request-body). 
    #
    # @param payment_instrument_id The Id of a payment instrument.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
    # @return [PostPaymentInstrumentRequest]
    #
    def get_payment_instrument(payment_instrument_id, opts = {})
      data, status_code, headers = get_payment_instrument_with_http_info(payment_instrument_id, opts)
      return data, status_code, headers
    end

    # Retrieve a Payment Instrument
    # |  |  |  | | --- | --- | --- | |**Standalone Payment Instruments**&lt;br&gt;A Payment Instrument represents tokenized payment information such as expiration date, billing address &amp; card type.&lt;br&gt;A Payment Instrument token does not store the card number. A Payment Instrument is associated with an [Instrument Identifier](#token-management_instrument-identifier_create-an-instrument-identifier) that represents either a payment card number, or in the case of an ACH bank account, the routing and account number.&lt;br&gt;**Standalone Payment Instruments do not belong to a [Customer](#token-management_customer_create-a-customer).**|&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;|**Retrieving a Payment Instrument**&lt;br&gt;Your system can use this API to retrieve an existing Payment Instrument.&lt;br&gt;To perform a payment with a particular Payment Instrument simply specify the [Payment Instrument Id in the payments request](#payments_payments_process-a-payment_samplerequests-dropdown_authorization-using-tokens_authorization-with-customer-payment-instrument-and-shipping-address-token-id_liveconsole-tab-request-body). 
    # @param payment_instrument_id The Id of a payment instrument.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
    # @return [Array<(PostPaymentInstrumentRequest, Fixnum, Hash)>] PostPaymentInstrumentRequest data, response status code and response headers
    def get_payment_instrument_with_http_info(payment_instrument_id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: PaymentInstrumentApi.get_payment_instrument ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'payment_instrument_id' is set
      if @api_client.config.client_side_validation && payment_instrument_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_instrument_id' when calling PaymentInstrumentApi.get_payment_instrument"
      end
      # resource path
      local_var_path = 'tms/v1/paymentinstruments/{paymentInstrumentId}'.sub('{' + 'paymentInstrumentId' + '}', payment_instrument_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])
      header_params[:'profile-id'] = opts[:'profile_id'] if !opts[:'profile_id'].nil?

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
        :return_type => 'PostPaymentInstrumentRequest')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: PaymentInstrumentApi#get_payment_instrument\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Update a Payment Instrument
    # |  |  |  | | --- | --- | --- | |**Standalone Payment Instruments**<br>A Payment Instrument represents tokenized payment information such as expiration date, billing address & card type.<br>A Payment Instrument token does not store the card number. A Payment Instrument is associated with an [Instrument Identifier](#token-management_instrument-identifier_create-an-instrument-identifier) that represents either a payment card number, or in the case of an ACH bank account, the routing and account number.<br>**Standalone Payment Instruments do not belong to a [Customer](#token-management_customer_create-a-customer).**|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|**Updating a Payment Instrument**<br>Your system can use this API to update an existing Payment Instrument. 
    #
    # @param payment_instrument_id The Id of a payment instrument.
    # @param patch_payment_instrument_request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
    # @option opts [String] :if_match Contains an ETag value from a GET request to make the request conditional.
    # @return [PatchPaymentInstrumentRequest]
    #
    def patch_payment_instrument(payment_instrument_id, patch_payment_instrument_request, opts = {})
      data, status_code, headers = patch_payment_instrument_with_http_info(payment_instrument_id, patch_payment_instrument_request, opts)
      return data, status_code, headers
    end

    # Update a Payment Instrument
    # |  |  |  | | --- | --- | --- | |**Standalone Payment Instruments**&lt;br&gt;A Payment Instrument represents tokenized payment information such as expiration date, billing address &amp; card type.&lt;br&gt;A Payment Instrument token does not store the card number. A Payment Instrument is associated with an [Instrument Identifier](#token-management_instrument-identifier_create-an-instrument-identifier) that represents either a payment card number, or in the case of an ACH bank account, the routing and account number.&lt;br&gt;**Standalone Payment Instruments do not belong to a [Customer](#token-management_customer_create-a-customer).**|&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;|**Updating a Payment Instrument**&lt;br&gt;Your system can use this API to update an existing Payment Instrument. 
    # @param payment_instrument_id The Id of a payment instrument.
    # @param patch_payment_instrument_request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
    # @option opts [String] :if_match Contains an ETag value from a GET request to make the request conditional.
    # @return [Array<(PatchPaymentInstrumentRequest, Fixnum, Hash)>] PatchPaymentInstrumentRequest data, response status code and response headers
    def patch_payment_instrument_with_http_info(payment_instrument_id, patch_payment_instrument_request, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: PaymentInstrumentApi.patch_payment_instrument ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'payment_instrument_id' is set
      if @api_client.config.client_side_validation && payment_instrument_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_instrument_id' when calling PaymentInstrumentApi.patch_payment_instrument"
      end
      # verify the required parameter 'patch_payment_instrument_request' is set
      if @api_client.config.client_side_validation && patch_payment_instrument_request.nil?
        fail ArgumentError, "Missing the required parameter 'patch_payment_instrument_request' when calling PaymentInstrumentApi.patch_payment_instrument"
      end
      # resource path
      local_var_path = 'tms/v1/paymentinstruments/{paymentInstrumentId}'.sub('{' + 'paymentInstrumentId' + '}', payment_instrument_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])
      header_params[:'profile-id'] = opts[:'profile_id'] if !opts[:'profile_id'].nil?
      header_params[:'if-match'] = opts[:'if_match'] if !opts[:'if_match'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(patch_payment_instrument_request)
      sdk_tracker = SdkTracker.new
      post_body = sdk_tracker.insert_developer_id_tracker(post_body, 'PatchPaymentInstrumentRequest', @api_client.config.host, @api_client.merchantconfig.defaultDeveloperId)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PatchPaymentInstrumentRequest')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: PaymentInstrumentApi#patch_payment_instrument\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Create a Payment Instrument
    # |  |  |  | | --- | --- | --- | |**Standalone Payment Instruments**<br>A Payment Instrument represents tokenized payment information such as expiration date, billing address & card type.<br>A Payment Instrument token does not store the card number. A Payment Instrument is associated with an [Instrument Identifier](#token-management_instrument-identifier_create-an-instrument-identifier) that represents either a payment card number, or in the case of an ACH bank account, the routing and account number.<br>**Standalone Payment Instruments do not belong to a [Customer](#token-management_customer_create-a-customer).**<br><br>**Creating a Payment Instrument**<br>It is recommended you [create a Payment Instrument via a Payment Authorization](#payments_payments_process-a-payment_samplerequests-dropdown_authorization-with-token-create_authorization-with-customer-token-creation_liveconsole-tab-request-body), this can be for a zero amount.<br>In Europe: You should perform Payer Authentication alongside the Authorization.|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|**Payment Network Tokens**<br>Network tokens perform better than regular card numbers and they are not necessarily invalidated when a cardholder loses their card, or it expires.<br>A Payment Network Token will be automatically created and used in future payments if you are enabled for the service.<br>A Payment Network Token can also be [provisioned for an existing Instrument Identifier](#token-management_instrument-identifier_enroll-an-instrument-identifier-for-payment-network-token).<br>For more information about Payment Network Tokens see the Developer Guide.<br><br>**Payments with Payment Instruments**<br>To perform a payment with a particular Payment Instrument specify the [Payment Instrument in the payment request](#payments_payments_process-a-payment_samplerequests-dropdown_authorization-using-tokens_authorization-with-customer-payment-instrument-and-shipping-address-token-id_liveconsole-tab-request-body). 
    #
    # @param post_payment_instrument_request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
    # @return [PostPaymentInstrumentRequest]
    #
    def post_payment_instrument(post_payment_instrument_request, opts = {})
      data, status_code, headers = post_payment_instrument_with_http_info(post_payment_instrument_request, opts)
      return data, status_code, headers
    end

    # Create a Payment Instrument
    # |  |  |  | | --- | --- | --- | |**Standalone Payment Instruments**&lt;br&gt;A Payment Instrument represents tokenized payment information such as expiration date, billing address &amp; card type.&lt;br&gt;A Payment Instrument token does not store the card number. A Payment Instrument is associated with an [Instrument Identifier](#token-management_instrument-identifier_create-an-instrument-identifier) that represents either a payment card number, or in the case of an ACH bank account, the routing and account number.&lt;br&gt;**Standalone Payment Instruments do not belong to a [Customer](#token-management_customer_create-a-customer).**&lt;br&gt;&lt;br&gt;**Creating a Payment Instrument**&lt;br&gt;It is recommended you [create a Payment Instrument via a Payment Authorization](#payments_payments_process-a-payment_samplerequests-dropdown_authorization-with-token-create_authorization-with-customer-token-creation_liveconsole-tab-request-body), this can be for a zero amount.&lt;br&gt;In Europe: You should perform Payer Authentication alongside the Authorization.|&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;|**Payment Network Tokens**&lt;br&gt;Network tokens perform better than regular card numbers and they are not necessarily invalidated when a cardholder loses their card, or it expires.&lt;br&gt;A Payment Network Token will be automatically created and used in future payments if you are enabled for the service.&lt;br&gt;A Payment Network Token can also be [provisioned for an existing Instrument Identifier](#token-management_instrument-identifier_enroll-an-instrument-identifier-for-payment-network-token).&lt;br&gt;For more information about Payment Network Tokens see the Developer Guide.&lt;br&gt;&lt;br&gt;**Payments with Payment Instruments**&lt;br&gt;To perform a payment with a particular Payment Instrument specify the [Payment Instrument in the payment request](#payments_payments_process-a-payment_samplerequests-dropdown_authorization-using-tokens_authorization-with-customer-payment-instrument-and-shipping-address-token-id_liveconsole-tab-request-body). 
    # @param post_payment_instrument_request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
    # @return [Array<(PostPaymentInstrumentRequest, Fixnum, Hash)>] PostPaymentInstrumentRequest data, response status code and response headers
    def post_payment_instrument_with_http_info(post_payment_instrument_request, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: PaymentInstrumentApi.post_payment_instrument ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'post_payment_instrument_request' is set
      if @api_client.config.client_side_validation && post_payment_instrument_request.nil?
        fail ArgumentError, "Missing the required parameter 'post_payment_instrument_request' when calling PaymentInstrumentApi.post_payment_instrument"
      end
      # resource path
      local_var_path = 'tms/v1/paymentinstruments'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])
      header_params[:'profile-id'] = opts[:'profile_id'] if !opts[:'profile_id'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(post_payment_instrument_request)
      sdk_tracker = SdkTracker.new
      post_body = sdk_tracker.insert_developer_id_tracker(post_body, 'PostPaymentInstrumentRequest', @api_client.config.host, @api_client.merchantconfig.defaultDeveloperId)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PostPaymentInstrumentRequest')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: PaymentInstrumentApi#post_payment_instrument\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
  end
end
