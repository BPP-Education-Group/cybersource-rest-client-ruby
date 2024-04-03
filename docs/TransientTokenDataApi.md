# CyberSource::TransientTokenDataApi

All URIs are relative to *https://apitest.cybersource.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_payment_credentials_for_transient_token**](TransientTokenDataApi.md#get_payment_credentials_for_transient_token) | **GET** /up/v1/payment-credentials/{jti} | Get Payment Credentials
[**get_transaction_for_transient_token**](TransientTokenDataApi.md#get_transaction_for_transient_token) | **GET** /up/v1/payment-details/{transientToken} | Get Transient Token Data


# **get_payment_credentials_for_transient_token**
> String get_payment_credentials_for_transient_token(jti)

Get Payment Credentials

Retrieve the Payment data captured by Unified Checkout. This API is used to retrieve the detailed data represented by the Transient Token. This API will return PCI payment data captured by the Unified Checkout platform.

### Example
```ruby
# load the gem
require 'cybersource_rest_client'

api_instance = CyberSource::TransientTokenDataApi.new

jti = "jti_example" # String | The jti field contained within the Transient token returned from a successful Unified Checkout transaction 


begin
  #Get Payment Credentials
  result = api_instance.get_payment_credentials_for_transient_token(jti)
  p result
rescue CyberSource::ApiError => e
  puts "Exception when calling TransientTokenDataApi->get_payment_credentials_for_transient_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jti** | **String**| The jti field contained within the Transient token returned from a successful Unified Checkout transaction  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=utf-8
 - **Accept**: application/json



# **get_transaction_for_transient_token**
> get_transaction_for_transient_token(transient_token)

Get Transient Token Data

Retrieve the data captured by Unified Checkout. This API is used to retrieve the detailed data represented by the Transient Token. This API will not return PCI payment data (PAN). Include the Request ID in the GET request to retrieve the transaction details.

### Example
```ruby
# load the gem
require 'cybersource_rest_client'

api_instance = CyberSource::TransientTokenDataApi.new

transient_token = "transient_token_example" # String | Transient Token returned by the Unified Checkout application. 


begin
  #Get Transient Token Data
  api_instance.get_transaction_for_transient_token(transient_token)
rescue CyberSource::ApiError => e
  puts "Exception when calling TransientTokenDataApi->get_transaction_for_transient_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transient_token** | **String**| Transient Token returned by the Unified Checkout application.  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=utf-8
 - **Accept**: application/json



