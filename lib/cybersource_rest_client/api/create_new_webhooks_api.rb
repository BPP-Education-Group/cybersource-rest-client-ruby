=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'uri'

module CyberSource
  class CreateNewWebhooksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
      @api_client.set_configuration(config)
    end
    # Create a Webhook
    # Create a new webhook subscription. Before creating a webhook, ensure that a security key has been created at the top of this developer center section. You will not need to pass us back the key during the creation of the webhook, but you will receive an error if you did not already create a key or store one on file. 
    #
    # @param [Hash] opts the optional parameters
    # @option opts [CreateWebhookRequest] :create_webhook_request The webhook payload
    # @return [InlineResponse2014]
    #
    # DISCLAIMER : Cybersource may allow Customer to access, use, and/or test a Cybersource product or service that may still be in development or has not been market-tested ("Beta Product") solely for the purpose of evaluating the functionality or marketability of the Beta Product (a "Beta Evaluation"). Notwithstanding any language to the contrary, the following terms shall apply with respect to Customer's participation in any Beta Evaluation (and the Beta Product(s)) accessed thereunder): The Parties will enter into a separate form agreement detailing the scope of the Beta Evaluation, requirements, pricing, the length of the beta evaluation period ("Beta Product Form"). Beta Products are not, and may not become, Transaction Services and have not yet been publicly released and are offered for the sole purpose of internal testing and non-commercial evaluation. Customer's use of the Beta Product shall be solely for the purpose of conducting the Beta Evaluation. Customer accepts all risks arising out of the access and use of the Beta Products. Cybersource may, in its sole discretion, at any time, terminate or discontinue the Beta Evaluation. Customer acknowledges and agrees that any Beta Product may still be in development and that Beta Product is provided "AS IS" and may not perform at the level of a commercially available service, may not operate as expected and may be modified prior to release. CYBERSOURCE SHALL NOT BE RESPONSIBLE OR LIABLE UNDER ANY CONTRACT, TORT (INCLUDING NEGLIGENCE), OR OTHERWISE RELATING TO A BETA PRODUCT OR THE BETA EVALUATION (A) FOR LOSS OR INACCURACY OF DATA OR COST OF PROCUREMENT OF SUBSTITUTE GOODS, SERVICES OR TECHNOLOGY, (B) ANY CLAIM, LOSSES, DAMAGES, OR CAUSE OF ACTION ARISING IN CONNECTION WITH THE BETA PRODUCT; OR (C) FOR ANY INDIRECT, INCIDENTAL OR CONSEQUENTIAL DAMAGES INCLUDING, BUT NOT LIMITED TO, LOSS OF REVENUES AND LOSS OF PROFITS.
    def create_webhook_subscription(opts = {})
      data, status_code, headers = create_webhook_subscription_with_http_info(opts)
      return data, status_code, headers
    end

    # Create a Webhook
    # Create a new webhook subscription. Before creating a webhook, ensure that a security key has been created at the top of this developer center section. You will not need to pass us back the key during the creation of the webhook, but you will receive an error if you did not already create a key or store one on file. 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateWebhookRequest] :create_webhook_request The webhook payload
    # @return [Array<(InlineResponse2014, Fixnum, Hash)>] InlineResponse2014 data, response status code and response headers
    def create_webhook_subscription_with_http_info(opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: CreateNewWebhooksApi.create_webhook_subscription ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # resource path
      local_var_path = 'notification-subscriptions/v1/webhooks'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'create_webhook_request'])
      sdk_tracker = SdkTracker.new
      post_body = sdk_tracker.insert_developer_id_tracker(post_body, 'CreateWebhookRequest', @api_client.config.host, @api_client.merchantconfig.defaultDeveloperId)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2014')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: CreateNewWebhooksApi#create_webhook_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Find Products You Can Subscribe To
    # Retrieve a list of products and event types that your account is eligible for. These products and events are the ones that you may subscribe to in the next step of creating webhooks.
    #
    # @param organization_id The Organization Identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<InlineResponse2002>]
    #
    # DISCLAIMER : Cybersource may allow Customer to access, use, and/or test a Cybersource product or service that may still be in development or has not been market-tested ("Beta Product") solely for the purpose of evaluating the functionality or marketability of the Beta Product (a "Beta Evaluation"). Notwithstanding any language to the contrary, the following terms shall apply with respect to Customer's participation in any Beta Evaluation (and the Beta Product(s)) accessed thereunder): The Parties will enter into a separate form agreement detailing the scope of the Beta Evaluation, requirements, pricing, the length of the beta evaluation period ("Beta Product Form"). Beta Products are not, and may not become, Transaction Services and have not yet been publicly released and are offered for the sole purpose of internal testing and non-commercial evaluation. Customer's use of the Beta Product shall be solely for the purpose of conducting the Beta Evaluation. Customer accepts all risks arising out of the access and use of the Beta Products. Cybersource may, in its sole discretion, at any time, terminate or discontinue the Beta Evaluation. Customer acknowledges and agrees that any Beta Product may still be in development and that Beta Product is provided "AS IS" and may not perform at the level of a commercially available service, may not operate as expected and may be modified prior to release. CYBERSOURCE SHALL NOT BE RESPONSIBLE OR LIABLE UNDER ANY CONTRACT, TORT (INCLUDING NEGLIGENCE), OR OTHERWISE RELATING TO A BETA PRODUCT OR THE BETA EVALUATION (A) FOR LOSS OR INACCURACY OF DATA OR COST OF PROCUREMENT OF SUBSTITUTE GOODS, SERVICES OR TECHNOLOGY, (B) ANY CLAIM, LOSSES, DAMAGES, OR CAUSE OF ACTION ARISING IN CONNECTION WITH THE BETA PRODUCT; OR (C) FOR ANY INDIRECT, INCIDENTAL OR CONSEQUENTIAL DAMAGES INCLUDING, BUT NOT LIMITED TO, LOSS OF REVENUES AND LOSS OF PROFITS.
    def find_products_to_subscribe(organization_id, opts = {})
      data, status_code, headers = find_products_to_subscribe_with_http_info(organization_id, opts)
      return data, status_code, headers
    end

    # Find Products You Can Subscribe To
    # Retrieve a list of products and event types that your account is eligible for. These products and events are the ones that you may subscribe to in the next step of creating webhooks.
    # @param organization_id The Organization Identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse2002>, Fixnum, Hash)>] Array<InlineResponse2002> data, response status code and response headers
    def find_products_to_subscribe_with_http_info(organization_id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: CreateNewWebhooksApi.find_products_to_subscribe ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling CreateNewWebhooksApi.find_products_to_subscribe"
      end
      # resource path
      local_var_path = 'notification-subscriptions/v1/products/{organizationId}'.sub('{' + 'organizationId' + '}', organization_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=utf-8'])
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
        :return_type => 'Array<InlineResponse2002>')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: CreateNewWebhooksApi#find_products_to_subscribe\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Create Webhook Security Keys
    # Create security keys that CyberSource will use internally to connect to your servers and validate messages using a digital signature.  Select the CREATE example for CyberSource to generate the key on our server and maintain it for you as well. Remeber to save the key in the API response, so that you can use it to validate messages later. 
    #
    # @param v_c_sender_organization_id Sender organization id
    # @param v_c_permissions Encoded user permissions returned by the CGK, for the entity user who initiated the boarding
    # @param [Hash] opts the optional parameters
    # @option opts [String] :v_c_correlation_id A globally unique id associated with your request
    # @option opts [SaveSymEgressKey] :save_sym_egress_key Provide egress Symmetric key information to save (create or store or refresh)
    # @return [InlineResponse2013]
    #
    # DISCLAIMER : Cybersource may allow Customer to access, use, and/or test a Cybersource product or service that may still be in development or has not been market-tested ("Beta Product") solely for the purpose of evaluating the functionality or marketability of the Beta Product (a "Beta Evaluation"). Notwithstanding any language to the contrary, the following terms shall apply with respect to Customer's participation in any Beta Evaluation (and the Beta Product(s)) accessed thereunder): The Parties will enter into a separate form agreement detailing the scope of the Beta Evaluation, requirements, pricing, the length of the beta evaluation period ("Beta Product Form"). Beta Products are not, and may not become, Transaction Services and have not yet been publicly released and are offered for the sole purpose of internal testing and non-commercial evaluation. Customer's use of the Beta Product shall be solely for the purpose of conducting the Beta Evaluation. Customer accepts all risks arising out of the access and use of the Beta Products. Cybersource may, in its sole discretion, at any time, terminate or discontinue the Beta Evaluation. Customer acknowledges and agrees that any Beta Product may still be in development and that Beta Product is provided "AS IS" and may not perform at the level of a commercially available service, may not operate as expected and may be modified prior to release. CYBERSOURCE SHALL NOT BE RESPONSIBLE OR LIABLE UNDER ANY CONTRACT, TORT (INCLUDING NEGLIGENCE), OR OTHERWISE RELATING TO A BETA PRODUCT OR THE BETA EVALUATION (A) FOR LOSS OR INACCURACY OF DATA OR COST OF PROCUREMENT OF SUBSTITUTE GOODS, SERVICES OR TECHNOLOGY, (B) ANY CLAIM, LOSSES, DAMAGES, OR CAUSE OF ACTION ARISING IN CONNECTION WITH THE BETA PRODUCT; OR (C) FOR ANY INDIRECT, INCIDENTAL OR CONSEQUENTIAL DAMAGES INCLUDING, BUT NOT LIMITED TO, LOSS OF REVENUES AND LOSS OF PROFITS.
    def save_sym_egress_key(v_c_sender_organization_id, v_c_permissions, opts = {})
      data, status_code, headers = save_sym_egress_key_with_http_info(v_c_sender_organization_id, v_c_permissions, opts)
      return data, status_code, headers
    end

    # Create Webhook Security Keys
    # Create security keys that CyberSource will use internally to connect to your servers and validate messages using a digital signature.  Select the CREATE example for CyberSource to generate the key on our server and maintain it for you as well. Remeber to save the key in the API response, so that you can use it to validate messages later. 
    # @param v_c_sender_organization_id Sender organization id
    # @param v_c_permissions Encoded user permissions returned by the CGK, for the entity user who initiated the boarding
    # @param [Hash] opts the optional parameters
    # @option opts [String] :v_c_correlation_id A globally unique id associated with your request
    # @option opts [SaveSymEgressKey] :save_sym_egress_key Provide egress Symmetric key information to save (create or store or refresh)
    # @return [Array<(InlineResponse2013, Fixnum, Hash)>] InlineResponse2013 data, response status code and response headers
    def save_sym_egress_key_with_http_info(v_c_sender_organization_id, v_c_permissions, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: CreateNewWebhooksApi.save_sym_egress_key ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'v_c_sender_organization_id' is set
      if @api_client.config.client_side_validation && v_c_sender_organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'v_c_sender_organization_id' when calling CreateNewWebhooksApi.save_sym_egress_key"
      end
      #if @api_client.config.client_side_validation && v_c_sender_organization_id !~ Regexp.new(/^[A-Za-z0-9\\-_]+$/)
        #fail ArgumentError, "invalid value for 'v_c_sender_organization_id' when calling CreateNewWebhooksApi.save_sym_egress_key, must conform to the pattern /^[A-Za-z0-9\\-_]+$/."
      #end

      # verify the required parameter 'v_c_permissions' is set
      if @api_client.config.client_side_validation && v_c_permissions.nil?
        fail ArgumentError, "Missing the required parameter 'v_c_permissions' when calling CreateNewWebhooksApi.save_sym_egress_key"
      end
      #if @api_client.config.client_side_validation && !opts[:'v_c_correlation_id'].nil? && opts[:'v_c_correlation_id'] !~ Regexp.new(/^[A-Za-z0-9\\.\\-_:]+$/)
        #fail ArgumentError, "invalid value for 'opts[:\"v_c_correlation_id\"]' when calling CreateNewWebhooksApi.save_sym_egress_key, must conform to the pattern /^[A-Za-z0-9\\.\\-_:]+$/."
      #end

      # resource path
      local_var_path = 'kms/egress/v2/keys-sym'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])
      header_params[:'v-c-sender-organization-id'] = v_c_sender_organization_id
      header_params[:'v-c-permissions'] = v_c_permissions
      header_params[:'v-c-correlation-id'] = opts[:'v_c_correlation_id'] if !opts[:'v_c_correlation_id'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'save_sym_egress_key'])
      sdk_tracker = SdkTracker.new
      post_body = sdk_tracker.insert_developer_id_tracker(post_body, 'SaveSymEgressKey', @api_client.config.host, @api_client.merchantconfig.defaultDeveloperId)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2013')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: CreateNewWebhooksApi#save_sym_egress_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
  end
end
