# CyberSource::ReportSubscriptionsApi

All URIs are relative to *https://apitest.cybersource.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_subscription**](ReportSubscriptionsApi.md#create_subscription) | **PUT** /reporting/v3/report-subscriptions | Create Report Subscription for a report name by organization
[**delete_subscription**](ReportSubscriptionsApi.md#delete_subscription) | **DELETE** /reporting/v3/report-subscriptions/{reportName} | Delete subscription of a report name by organization
[**get_all_subscriptions**](ReportSubscriptionsApi.md#get_all_subscriptions) | **GET** /reporting/v3/report-subscriptions | Get all subscriptions
[**get_subscription**](ReportSubscriptionsApi.md#get_subscription) | **GET** /reporting/v3/report-subscriptions/{reportName} | Get subscription for report name


# **create_subscription**
> create_subscription(request_body, opts)

Create Report Subscription for a report name by organization

Create a report subscription for your organization. The report name must be unique. 

### Example
```ruby
# load the gem
require 'cybersource_rest_client'

api_instance = CyberSource::ReportSubscriptionsApi.new

request_body = CyberSource::RequestBody1.new # RequestBody1 | Report subscription request payload

opts = { 
  organization_id: "organization_id_example" # String | Valid Cybersource Organization Id
}

begin
  #Create Report Subscription for a report name by organization
  api_instance.create_subscription(request_body, opts)
rescue CyberSource::ApiError => e
  puts "Exception when calling ReportSubscriptionsApi->create_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**RequestBody1**](RequestBody1.md)| Report subscription request payload | 
 **organization_id** | **String**| Valid Cybersource Organization Id | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json



# **delete_subscription**
> delete_subscription(report_name)

Delete subscription of a report name by organization

Delete a report subscription for your organization. You must know the unique name of the report you want to delete. 

### Example
```ruby
# load the gem
require 'cybersource_rest_client'

api_instance = CyberSource::ReportSubscriptionsApi.new

report_name = "report_name_example" # String | Name of the Report to Delete


begin
  #Delete subscription of a report name by organization
  api_instance.delete_subscription(report_name)
rescue CyberSource::ApiError => e
  puts "Exception when calling ReportSubscriptionsApi->delete_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report_name** | **String**| Name of the Report to Delete | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=utf-8
 - **Accept**: application/hal+json



# **get_all_subscriptions**
> ReportingV3ReportSubscriptionsGet200Response get_all_subscriptions

Get all subscriptions

View a summary of all report subscriptions. 

### Example
```ruby
# load the gem
require 'cybersource_rest_client'

api_instance = CyberSource::ReportSubscriptionsApi.new

begin
  #Get all subscriptions
  result = api_instance.get_all_subscriptions
  p result
rescue CyberSource::ApiError => e
  puts "Exception when calling ReportSubscriptionsApi->get_all_subscriptions: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ReportingV3ReportSubscriptionsGet200Response**](ReportingV3ReportSubscriptionsGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=utf-8
 - **Accept**: application/hal+json



# **get_subscription**
> ReportingV3ReportSubscriptionsGet200ResponseSubscriptions get_subscription(report_name)

Get subscription for report name

View the details of a report subscription, such as the report format or report frequency, using the report’s unique name. 

### Example
```ruby
# load the gem
require 'cybersource_rest_client'

api_instance = CyberSource::ReportSubscriptionsApi.new

report_name = "report_name_example" # String | Name of the Report to Retrieve


begin
  #Get subscription for report name
  result = api_instance.get_subscription(report_name)
  p result
rescue CyberSource::ApiError => e
  puts "Exception when calling ReportSubscriptionsApi->get_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report_name** | **String**| Name of the Report to Retrieve | 

### Return type

[**ReportingV3ReportSubscriptionsGet200ResponseSubscriptions**](ReportingV3ReportSubscriptionsGet200ResponseSubscriptions.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=utf-8
 - **Accept**: application/hal+json



