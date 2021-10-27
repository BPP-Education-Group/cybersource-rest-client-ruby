=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class ReportSubscriptionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
	  @api_client.set_configuration(config)
    end
    # Create a Standard or Classic Subscription
    # Create or update an already existing classic or standard subscription. 
    # @param predefined_subscription_request_bean Report subscription request payload
    # @param [Hash] opts the optional parameters
    # @option opts [String] :organization_id Valid Organization Id
    # @return [nil]
    def create_standard_or_classic_subscription(predefined_subscription_request_bean, opts = {})
      data, status_code, headers = create_standard_or_classic_subscription_with_http_info(predefined_subscription_request_bean, opts)
      return data, status_code, headers
    end

    # Create a Standard or Classic Subscription
    # Create or update an already existing classic or standard subscription. 
    # @param predefined_subscription_request_bean Report subscription request payload
    # @param [Hash] opts the optional parameters
    # @option opts [String] :organization_id Valid Organization Id
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_standard_or_classic_subscription_with_http_info(predefined_subscription_request_bean, opts = {})
      
	  if @api_client.config.debugging
	  	begin
			raise
				@api_client.config.logger.debug 'Calling API: ReportSubscriptionsApi.create_standard_or_classic_subscription ...'
			rescue
				puts 'Cannot write to log'
			end
      end
      # verify the required parameter 'predefined_subscription_request_bean' is set
      if @api_client.config.client_side_validation && predefined_subscription_request_bean.nil?
        fail ArgumentError, "Missing the required parameter 'predefined_subscription_request_bean' when calling ReportSubscriptionsApi.create_standard_or_classic_subscription"
      end
      if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'].to_s.length > 32
        fail ArgumentError, 'invalid value for "opts[:"organization_id"]" when calling ReportSubscriptionsApi.create_standard_or_classic_subscription, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"organization_id"]" when calling ReportSubscriptionsApi.create_standard_or_classic_subscription, the character length must be great than or equal to 1.'
      end

      #if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'] !~ Regexp.new(/[a-zA-Z0-9-_]+/)
        #fail ArgumentError, "invalid value for 'opts[:\"organization_id\"]' when calling ReportSubscriptionsApi.create_standard_or_classic_subscription, must conform to the pattern /[a-zA-Z0-9-_]+/."
      #end

      # resource path
      local_var_path = 'reporting/v3/predefined-report-subscriptions'

      # query parameters
      query_params = {}
      query_params[:'organizationId'] = opts[:'organization_id'] if !opts[:'organization_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(predefined_subscription_request_bean)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
		begin
		raise
			@api_client.config.logger.debug "API called: ReportSubscriptionsApi#create_standard_or_classic_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
		rescue
			puts 'Cannot write to log'
		end
	  end
      return data, status_code, headers
    end
    # Create Report Subscription for a Report Name by Organization
    # Create a report subscription for your organization. The report name must be unique. 
    # @param create_report_subscription_request Report subscription request payload
    # @param [Hash] opts the optional parameters
    # @option opts [String] :organization_id Valid Organization Id
    # @return [nil]
    def create_subscription(create_report_subscription_request, opts = {})
      data, status_code, headers = create_subscription_with_http_info(create_report_subscription_request, opts)
      return data, status_code, headers
    end

    # Create Report Subscription for a Report Name by Organization
    # Create a report subscription for your organization. The report name must be unique. 
    # @param create_report_subscription_request Report subscription request payload
    # @param [Hash] opts the optional parameters
    # @option opts [String] :organization_id Valid Organization Id
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_subscription_with_http_info(create_report_subscription_request, opts = {})
      
	  if @api_client.config.debugging
	  	begin
			raise
				@api_client.config.logger.debug 'Calling API: ReportSubscriptionsApi.create_subscription ...'
			rescue
				puts 'Cannot write to log'
			end
      end
      # verify the required parameter 'create_report_subscription_request' is set
      if @api_client.config.client_side_validation && create_report_subscription_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_report_subscription_request' when calling ReportSubscriptionsApi.create_subscription"
      end
      if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'].to_s.length > 32
        fail ArgumentError, 'invalid value for "opts[:"organization_id"]" when calling ReportSubscriptionsApi.create_subscription, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"organization_id"]" when calling ReportSubscriptionsApi.create_subscription, the character length must be great than or equal to 1.'
      end

      #if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'] !~ Regexp.new(/[a-zA-Z0-9-_]+/)
        #fail ArgumentError, "invalid value for 'opts[:\"organization_id\"]' when calling ReportSubscriptionsApi.create_subscription, must conform to the pattern /[a-zA-Z0-9-_]+/."
      #end

      # resource path
      local_var_path = 'reporting/v3/report-subscriptions'

      # query parameters
      query_params = {}
      query_params[:'organizationId'] = opts[:'organization_id'] if !opts[:'organization_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(create_report_subscription_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
		begin
		raise
			@api_client.config.logger.debug "API called: ReportSubscriptionsApi#create_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
		rescue
			puts 'Cannot write to log'
		end
	  end
      return data, status_code, headers
    end
    # Delete Subscription of a Report Name by Organization
    # Delete a report subscription for your organization. You must know the unique name of the report you want to delete. 
    # @param report_name Name of the Report to Delete
    # @param [Hash] opts the optional parameters
    # @option opts [String] :organization_id Valid Organization Id
    # @return [nil]
    def delete_subscription(report_name, opts = {})
      data, status_code, headers = delete_subscription_with_http_info(report_name, opts)
      return data, status_code, headers
    end

    # Delete Subscription of a Report Name by Organization
    # Delete a report subscription for your organization. You must know the unique name of the report you want to delete. 
    # @param report_name Name of the Report to Delete
    # @param [Hash] opts the optional parameters
    # @option opts [String] :organization_id Valid Organization Id
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_subscription_with_http_info(report_name, opts = {})
      
	  if @api_client.config.debugging
	  	begin
			raise
				@api_client.config.logger.debug 'Calling API: ReportSubscriptionsApi.delete_subscription ...'
			rescue
				puts 'Cannot write to log'
			end
      end
      # verify the required parameter 'report_name' is set
      if @api_client.config.client_side_validation && report_name.nil?
        fail ArgumentError, "Missing the required parameter 'report_name' when calling ReportSubscriptionsApi.delete_subscription"
      end
      if @api_client.config.client_side_validation && report_name.to_s.length > 80
        fail ArgumentError, 'invalid value for "report_name" when calling ReportSubscriptionsApi.delete_subscription, the character length must be smaller than or equal to 80.'
      end

      if @api_client.config.client_side_validation && report_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "report_name" when calling ReportSubscriptionsApi.delete_subscription, the character length must be great than or equal to 1.'
      end

      #if @api_client.config.client_side_validation && report_name !~ Regexp.new(/[a-zA-Z0-9-_+]+/)
        #fail ArgumentError, "invalid value for 'report_name' when calling ReportSubscriptionsApi.delete_subscription, must conform to the pattern /[a-zA-Z0-9-_+]+/."
      #end

      if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'].to_s.length > 32
        fail ArgumentError, 'invalid value for "opts[:"organization_id"]" when calling ReportSubscriptionsApi.delete_subscription, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"organization_id"]" when calling ReportSubscriptionsApi.delete_subscription, the character length must be great than or equal to 1.'
      end

      #if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'] !~ Regexp.new(/[a-zA-Z0-9-_]+/)
        #fail ArgumentError, "invalid value for 'opts[:\"organization_id\"]' when calling ReportSubscriptionsApi.delete_subscription, must conform to the pattern /[a-zA-Z0-9-_]+/."
      #end

      # resource path
      local_var_path = 'reporting/v3/report-subscriptions/{reportName}'.sub('{' + 'reportName' + '}', report_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'organizationId'] = opts[:'organization_id'] if !opts[:'organization_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
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
			@api_client.config.logger.debug "API called: ReportSubscriptionsApi#delete_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
		rescue
			puts 'Cannot write to log'
		end
	  end
      return data, status_code, headers
    end
    # Get All Subscriptions
    # View a summary of all report subscriptions. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :organization_id Valid Organization Id
    # @return [ReportingV3ReportSubscriptionsGet200Response]
    def get_all_subscriptions(opts = {})
      data, status_code, headers = get_all_subscriptions_with_http_info(opts)
      return data, status_code, headers
    end

    # Get All Subscriptions
    # View a summary of all report subscriptions. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :organization_id Valid Organization Id
    # @return [Array<(ReportingV3ReportSubscriptionsGet200Response, Fixnum, Hash)>] ReportingV3ReportSubscriptionsGet200Response data, response status code and response headers
    def get_all_subscriptions_with_http_info(opts = {})
      
	  if @api_client.config.debugging
	  	begin
			raise
				@api_client.config.logger.debug 'Calling API: ReportSubscriptionsApi.get_all_subscriptions ...'
			rescue
				puts 'Cannot write to log'
			end
      end
      if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'].to_s.length > 32
        fail ArgumentError, 'invalid value for "opts[:"organization_id"]" when calling ReportSubscriptionsApi.get_all_subscriptions, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"organization_id"]" when calling ReportSubscriptionsApi.get_all_subscriptions, the character length must be great than or equal to 1.'
      end

      #if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'] !~ Regexp.new(/[a-zA-Z0-9-_]+/)
        #fail ArgumentError, "invalid value for 'opts[:\"organization_id\"]' when calling ReportSubscriptionsApi.get_all_subscriptions, must conform to the pattern /[a-zA-Z0-9-_]+/."
      #end

      # resource path
      local_var_path = 'reporting/v3/report-subscriptions'

      # query parameters
      query_params = {}
      query_params[:'organizationId'] = opts[:'organization_id'] if !opts[:'organization_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ReportingV3ReportSubscriptionsGet200Response')
      if @api_client.config.debugging
		begin
		raise
			@api_client.config.logger.debug "API called: ReportSubscriptionsApi#get_all_subscriptions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
		rescue
			puts 'Cannot write to log'
		end
	  end
      return data, status_code, headers
    end
    # Get Subscription for Report Name
    # View the details of a report subscription, such as the report format or report frequency, using the report’s unique name. 
    # @param report_name Name of the Report to Retrieve
    # @param [Hash] opts the optional parameters
    # @option opts [String] :organization_id Valid Organization Id
    # @return [ReportingV3ReportSubscriptionsGet200ResponseSubscriptions]
    def get_subscription(report_name, opts = {})
      data, status_code, headers = get_subscription_with_http_info(report_name, opts)
      return data, status_code, headers
    end

    # Get Subscription for Report Name
    # View the details of a report subscription, such as the report format or report frequency, using the report’s unique name. 
    # @param report_name Name of the Report to Retrieve
    # @param [Hash] opts the optional parameters
    # @option opts [String] :organization_id Valid Organization Id
    # @return [Array<(ReportingV3ReportSubscriptionsGet200ResponseSubscriptions, Fixnum, Hash)>] ReportingV3ReportSubscriptionsGet200ResponseSubscriptions data, response status code and response headers
    def get_subscription_with_http_info(report_name, opts = {})
      
	  if @api_client.config.debugging
	  	begin
			raise
				@api_client.config.logger.debug 'Calling API: ReportSubscriptionsApi.get_subscription ...'
			rescue
				puts 'Cannot write to log'
			end
      end
      # verify the required parameter 'report_name' is set
      if @api_client.config.client_side_validation && report_name.nil?
        fail ArgumentError, "Missing the required parameter 'report_name' when calling ReportSubscriptionsApi.get_subscription"
      end
      if @api_client.config.client_side_validation && report_name.to_s.length > 80
        fail ArgumentError, 'invalid value for "report_name" when calling ReportSubscriptionsApi.get_subscription, the character length must be smaller than or equal to 80.'
      end

      if @api_client.config.client_side_validation && report_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "report_name" when calling ReportSubscriptionsApi.get_subscription, the character length must be great than or equal to 1.'
      end

      #if @api_client.config.client_side_validation && report_name !~ Regexp.new(/[a-zA-Z0-9-_+]+/)
        #fail ArgumentError, "invalid value for 'report_name' when calling ReportSubscriptionsApi.get_subscription, must conform to the pattern /[a-zA-Z0-9-_+]+/."
      #end

      if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'].to_s.length > 32
        fail ArgumentError, 'invalid value for "opts[:"organization_id"]" when calling ReportSubscriptionsApi.get_subscription, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"organization_id"]" when calling ReportSubscriptionsApi.get_subscription, the character length must be great than or equal to 1.'
      end

      #if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'] !~ Regexp.new(/[a-zA-Z0-9-_]+/)
        #fail ArgumentError, "invalid value for 'opts[:\"organization_id\"]' when calling ReportSubscriptionsApi.get_subscription, must conform to the pattern /[a-zA-Z0-9-_]+/."
      #end

      # resource path
      local_var_path = 'reporting/v3/report-subscriptions/{reportName}'.sub('{' + 'reportName' + '}', report_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'organizationId'] = opts[:'organization_id'] if !opts[:'organization_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ReportingV3ReportSubscriptionsGet200ResponseSubscriptions')
      if @api_client.config.debugging
		begin
		raise
			@api_client.config.logger.debug "API called: ReportSubscriptionsApi#get_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
		rescue
			puts 'Cannot write to log'
		end
	  end
      return data, status_code, headers
    end
  end
end
