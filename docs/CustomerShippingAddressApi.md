# CyberSource::CustomerShippingAddressApi

All URIs are relative to *https://apitest.cybersource.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_customer_shipping_address**](CustomerShippingAddressApi.md#delete_customer_shipping_address) | **DELETE** /tms/v2/customers/{customerId}/shipping-addresses/{shippingAddressId} | Delete a Customer Shipping Address
[**get_customer_shipping_address**](CustomerShippingAddressApi.md#get_customer_shipping_address) | **GET** /tms/v2/customers/{customerId}/shipping-addresses/{shippingAddressId} | Retrieve a Customer Shipping Address
[**get_customer_shipping_addresses_list**](CustomerShippingAddressApi.md#get_customer_shipping_addresses_list) | **GET** /tms/v2/customers/{customerId}/shipping-addresses | List Shipping Addresses for a Customer
[**patch_customers_shipping_address**](CustomerShippingAddressApi.md#patch_customers_shipping_address) | **PATCH** /tms/v2/customers/{customerId}/shipping-addresses/{shippingAddressId} | Update a Customer Shipping Address
[**post_customer_shipping_address**](CustomerShippingAddressApi.md#post_customer_shipping_address) | **POST** /tms/v2/customers/{customerId}/shipping-addresses | Create a Customer Shipping Address


# **delete_customer_shipping_address**
> delete_customer_shipping_address(customer_id, shipping_address_id, opts)

Delete a Customer Shipping Address

|  |  |  | | --- | --- | --- | |**Customer Shipping Address**<br>A Customer Shipping Address represents tokenized customer shipping information.<br>A [Customer](#token-management_customer_create-a-customer) can have [one or more Shipping Addresses](#token-management_customer-shipping-address_list-shipping-addresses-for-a-customer), with one allocated as the Customers default for use in payments.|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|**Deleting a Customers Shipping Address**<br>Your system can use this API to delete an existing Shipping Address for a Customer.<br>If a customer has more than one Shipping Address then the default Shipping Address cannot be deleted without first selecting a [new default Shipping Address](#token-management_customer-shipping-address_update-a-customer-shipping-address_samplerequests-dropdown_make-customer-shipping-address-the-default_liveconsole-tab-request-body). 

### Example
```ruby
# load the gem
require 'cybersource_rest_client'

api_instance = CyberSource::CustomerShippingAddressApi.new

customer_id = "customer_id_example" # String | The Id of a Customer.

shipping_address_id = "shipping_address_id_example" # String | The Id of a shipping address.

opts = { 
  profile_id: "profile_id_example" # String | The Id of a profile containing user specific TMS configuration.
}

begin
  #Delete a Customer Shipping Address
  api_instance.delete_customer_shipping_address(customer_id, shipping_address_id, opts)
rescue CyberSource::ApiError => e
  puts "Exception when calling CustomerShippingAddressApi->delete_customer_shipping_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| The Id of a Customer. | 
 **shipping_address_id** | **String**| The Id of a shipping address. | 
 **profile_id** | **String**| The Id of a profile containing user specific TMS configuration. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=utf-8
 - **Accept**: application/json;charset=utf-8



# **get_customer_shipping_address**
> Tmsv2customersEmbeddedDefaultShippingAddress get_customer_shipping_address(customer_id, shipping_address_id, opts)

Retrieve a Customer Shipping Address

|  |  |  | | --- | --- | --- | |**Customer Shipping Address**<br>A Customer Shipping Address represents tokenized customer shipping information.<br>A [Customer](#token-management_customer_create-a-customer) can have [one or more Shipping Addresses](#token-management_customer-shipping-address_list-shipping-addresses-for-a-customer), with one allocated as the Customers default for use in payments.|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|**Retrieving a Customer Shipping Address**<br>Your system can use this API to retrieve an existing Shipping Address for a Customer.<br>To perform a payment with a particular Shipping Address simply specify the [Shipping Address Id in the payments request](#payments_payments_process-a-payment_samplerequests-dropdown_authorization-using-tokens_authorization-with-customer-payment-instrument-and-shipping-address-token-id_liveconsole-tab-request-body). 

### Example
```ruby
# load the gem
require 'cybersource_rest_client'

api_instance = CyberSource::CustomerShippingAddressApi.new

customer_id = "customer_id_example" # String | The Id of a Customer.

shipping_address_id = "shipping_address_id_example" # String | The Id of a shipping address.

opts = { 
  profile_id: "profile_id_example" # String | The Id of a profile containing user specific TMS configuration.
}

begin
  #Retrieve a Customer Shipping Address
  result = api_instance.get_customer_shipping_address(customer_id, shipping_address_id, opts)
  p result
rescue CyberSource::ApiError => e
  puts "Exception when calling CustomerShippingAddressApi->get_customer_shipping_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| The Id of a Customer. | 
 **shipping_address_id** | **String**| The Id of a shipping address. | 
 **profile_id** | **String**| The Id of a profile containing user specific TMS configuration. | [optional] 

### Return type

[**Tmsv2customersEmbeddedDefaultShippingAddress**](Tmsv2customersEmbeddedDefaultShippingAddress.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=utf-8
 - **Accept**: application/json;charset=utf-8



# **get_customer_shipping_addresses_list**
> ShippingAddressListForCustomer get_customer_shipping_addresses_list(customer_id, opts)

List Shipping Addresses for a Customer

|  |  |  | | --- | --- | --- | |**Customer Shipping Address**<br>A Customer Shipping Address represents tokenized customer shipping information.<br>A [Customer](#token-management_customer_create-a-customer) can have [one or more Shipping Addresses](#token-management_customer-shipping-address_list-shipping-addresses-for-a-customer), with one allocated as the Customers default for use in payments.|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|**Retrieving all Customer Shipping Addresses**<br>Your system can use this API to retrieve all existing Shipping Addresses for a Customer. 

### Example
```ruby
# load the gem
require 'cybersource_rest_client'

api_instance = CyberSource::CustomerShippingAddressApi.new

customer_id = "customer_id_example" # String | The Id of a Customer.

opts = { 
  profile_id: "profile_id_example", # String | The Id of a profile containing user specific TMS configuration.
  offset: 0, # Integer | Starting record in zero-based dataset that should be returned as the first object in the array. Default is 0.
  limit: 20 # Integer | The maximum number that can be returned in the array starting from the offset record in zero-based dataset. Default is 20, maximum is 100.
}

begin
  #List Shipping Addresses for a Customer
  result = api_instance.get_customer_shipping_addresses_list(customer_id, opts)
  p result
rescue CyberSource::ApiError => e
  puts "Exception when calling CustomerShippingAddressApi->get_customer_shipping_addresses_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| The Id of a Customer. | 
 **profile_id** | **String**| The Id of a profile containing user specific TMS configuration. | [optional] 
 **offset** | **Integer**| Starting record in zero-based dataset that should be returned as the first object in the array. Default is 0. | [optional] [default to 0]
 **limit** | **Integer**| The maximum number that can be returned in the array starting from the offset record in zero-based dataset. Default is 20, maximum is 100. | [optional] [default to 20]

### Return type

[**ShippingAddressListForCustomer**](ShippingAddressListForCustomer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=utf-8
 - **Accept**: application/json;charset=utf-8



# **patch_customers_shipping_address**
> Tmsv2customersEmbeddedDefaultShippingAddress patch_customers_shipping_address(customer_id, shipping_address_id, patch_customer_shipping_address_request, opts)

Update a Customer Shipping Address

|  |  |  | | --- | --- | --- | |**Customer Shipping Address**<br>A Customer Shipping Address represents tokenized customer shipping information.<br>A [Customer](#token-management_customer_create-a-customer) can have [one or more Shipping Addresses](#token-management_customer-shipping-address_list-shipping-addresses-for-a-customer), with one allocated as the Customers default for use in payments.|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|**Updating a Customers Shipping Address**<br>Your system can use this API to update an existing Shipping Addresses for a Customer, including selecting a [default Shipping Address](#token-management_customer-shipping-address_update-a-customer-shipping-address_samplerequests-dropdown_make-customer-shipping-address-the-default_liveconsole-tab-request-body) for use in payments. 

### Example
```ruby
# load the gem
require 'cybersource_rest_client'

api_instance = CyberSource::CustomerShippingAddressApi.new

customer_id = "customer_id_example" # String | The Id of a Customer.

shipping_address_id = "shipping_address_id_example" # String | The Id of a shipping address.

patch_customer_shipping_address_request = CyberSource::PatchCustomerShippingAddressRequest.new # PatchCustomerShippingAddressRequest | 

opts = { 
  profile_id: "profile_id_example", # String | The Id of a profile containing user specific TMS configuration.
  if_match: "if_match_example" # String | Contains an ETag value from a GET request to make the request conditional.
}

begin
  #Update a Customer Shipping Address
  result = api_instance.patch_customers_shipping_address(customer_id, shipping_address_id, patch_customer_shipping_address_request, opts)
  p result
rescue CyberSource::ApiError => e
  puts "Exception when calling CustomerShippingAddressApi->patch_customers_shipping_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| The Id of a Customer. | 
 **shipping_address_id** | **String**| The Id of a shipping address. | 
 **patch_customer_shipping_address_request** | [**PatchCustomerShippingAddressRequest**](PatchCustomerShippingAddressRequest.md)|  | 
 **profile_id** | **String**| The Id of a profile containing user specific TMS configuration. | [optional] 
 **if_match** | **String**| Contains an ETag value from a GET request to make the request conditional. | [optional] 

### Return type

[**Tmsv2customersEmbeddedDefaultShippingAddress**](Tmsv2customersEmbeddedDefaultShippingAddress.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=utf-8
 - **Accept**: application/json;charset=utf-8



# **post_customer_shipping_address**
> Tmsv2customersEmbeddedDefaultShippingAddress post_customer_shipping_address(customer_id, post_customer_shipping_address_request, opts)

Create a Customer Shipping Address

|  |  |  | | --- | --- | --- | |**Customer Shipping Address**<br>A Customer Shipping Address represents tokenized customer shipping information.<br>A [Customer](#token-management_customer_create-a-customer) can have [one or more Shipping Addresses](#token-management_customer-shipping-address_list-shipping-addresses-for-a-customer), with one allocated as the Customers default for use in payments.|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|**Creating a Customer Shipping Address**<br>Your system can use this API to create an existing Customers default or non default Shipping Address.<br>You can also create additional Customer Shipping Addresses via the [Payments API](#payments_payments_process-a-payment_samplerequests-dropdown_authorization-with-token-create_authorization-create-default-payment-instrument-shipping-address-for-existing-customer_liveconsole-tab-request-body). 

### Example
```ruby
# load the gem
require 'cybersource_rest_client'

api_instance = CyberSource::CustomerShippingAddressApi.new

customer_id = "customer_id_example" # String | The Id of a Customer.

post_customer_shipping_address_request = CyberSource::PostCustomerShippingAddressRequest.new # PostCustomerShippingAddressRequest | 

opts = { 
  profile_id: "profile_id_example" # String | The Id of a profile containing user specific TMS configuration.
}

begin
  #Create a Customer Shipping Address
  result = api_instance.post_customer_shipping_address(customer_id, post_customer_shipping_address_request, opts)
  p result
rescue CyberSource::ApiError => e
  puts "Exception when calling CustomerShippingAddressApi->post_customer_shipping_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| The Id of a Customer. | 
 **post_customer_shipping_address_request** | [**PostCustomerShippingAddressRequest**](PostCustomerShippingAddressRequest.md)|  | 
 **profile_id** | **String**| The Id of a profile containing user specific TMS configuration. | [optional] 

### Return type

[**Tmsv2customersEmbeddedDefaultShippingAddress**](Tmsv2customersEmbeddedDefaultShippingAddress.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=utf-8
 - **Accept**: application/json;charset=utf-8



