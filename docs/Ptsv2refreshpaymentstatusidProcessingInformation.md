# CyberSource::Ptsv2refreshpaymentstatusidProcessingInformation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action_list** | **Array&lt;String&gt;** | Array of actions (one or more) to be included in the payment to invoke bundled services along with payment status.  Possible values are one or more of follows:   - &#x60;AP_STATUS&#x60;: Use this when Alternative Payment check status service is requested.   - &#x60;AP_SESSION_STATUS&#x60;: Use this when Alternative Payment check status service for Paypal, Klarna is requested.   - &#x60;AP_INITIATE_STATUS&#x60;: Use this when Alternative Payment check status service for KCP is requested.   - &#x60;AP_ORDER_STATUS&#x60;: Use this when Alternative Payment check status service for order status request.   - &#x60;AP_AUTH_STATUS&#x60;: Use this when Alternative Payment check status service for auth status request.   - &#x60;AP_CAPTURE_STATUS&#x60;: Use this when Alternative Payment check status service for capture status request.   - &#x60;AP_REFUND_STATUS&#x60;: Use this when Alternative Payment check status service for refund status request.  | [optional] 


