# CyberSource::Ptsv2paymentsDeviceInformation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Value created by the client software that uniquely identifies the POS device. CyberSource does not forward this value to the processor. Instead, the value is forwarded to the CyberSource reporting functionality.  This field is supported only for authorizations and credits on these processors: - American Express Direct - Credit Mutuel-CIC - FDC Nashville Global - OmniPay Direct - SIX  Optional field. String (32)  | [optional] 
**host_name** | **String** | DNS resolved hostname from &#x60;ipAddress&#x60;. | [optional] 
**ip_address** | **String** | IP address of the customer.  #### Used by **Authorization, Capture, and Credit** Optional field.  | [optional] 
**user_agent** | **String** | Customer&#39;s browser as identified from the HTTP header data. For example, &#x60;Mozilla&#x60; is the value that identifies the Netscape browser.  | [optional] 
**fingerprint_session_id** | **String** | Field that contains the session ID that you send to Decision Manager to obtain the device fingerprint information. The string can contain uppercase and lowercase letters, digits, hyphen (-), and underscore (_). However, do not use the same uppercase and lowercase letters to indicate different session IDs.  The session ID must be unique for each merchant ID. You can use any string that you are already generating, such as an order number or web session ID.  The session ID must be unique for each page load, regardless of an individual&#39;s web session ID. If a user navigates to a profiled page and is assigned a web session, navigates away from the profiled page, then navigates back to the profiled page, the generated session ID should be different and unique. You may use a web session ID, but it is preferable to use an application GUID (Globally Unique Identifier). This measure ensures that a unique ID is generated every time the page is loaded, even if it is the same user reloading the page.  | [optional] 
**use_raw_fingerprint_session_id** | **BOOLEAN** | Boolean that indicates whether request contains the device fingerprint information. Values: - &#x60;true&#x60;: Use raw fingerprintSessionId when looking up device details. - &#x60;false&#x60; (default): Use merchant id + fingerprintSessionId as the session id for Device detail collection.  | [optional] 
**device_type** | **String** | The device type at the client side. | [optional] 
**app_url** | **String** | This field will contain the deep link that would help the Customer App to wake up.  | [optional] 
**metadata** | **String** | Verifies that the payment is originating from a valid, user-approved application and device. Sending this field helps reduce fraud and declined transactions. Note The length is set for a hexadecimal representation of the GUID/UUID. This field accepts a 36-character string (with hyphens) or a 32-character string (without hyphens). Example 123e4567-e89b-12d3-a456-426655440000 Example 123e4567e89b12d3a456426655440000  | [optional] 
**raw_data** | [**Array&lt;Ptsv2paymentsDeviceInformationRawData&gt;**](Ptsv2paymentsDeviceInformationRawData.md) |  | [optional] 
**http_accept_browser_value** | **String** | Value of the Accept header sent by the customer&#39;s web browser. **Note** If the customer&#39;s browser provides a value, you must include it in your request.  | [optional] 
**http_accept_content** | **String** | The exact content of the HTTP accept header.  | [optional] 
**http_browser_email** | **String** | Email address set in the customer&#39;s browser, which may differ from customer email.  | [optional] 
**http_browser_language** | **String** | Value represents the browser language as defined in IETF BCP47. Example:en-US, refer  https://en.wikipedia.org/wiki/IETF_language_tag for more details.  | [optional] 
**http_browser_java_enabled** | **BOOLEAN** | A Boolean value that represents the ability of the cardholder browser to execute Java. Value is returned from the navigator.javaEnabled property. Possible Values:True/False  | [optional] 
**http_browser_java_script_enabled** | **BOOLEAN** | A Boolean value that represents the ability of the cardholder browser to execute JavaScript. Possible Values:True/False. **Note**: Merchants should be able to know the values from fingerprint details of cardholder&#39;s browser.  | [optional] 
**http_browser_color_depth** | **String** | Value represents the bit depth of the color palette for displaying images, in bits per pixel. Example : 24, refer https://en.wikipedia.org/wiki/Color_depth for more details  | [optional] 
**http_browser_screen_height** | **String** | Total height of the Cardholder&#39;s scree in pixels, example: 864.  | [optional] 
**http_browser_screen_width** | **String** | Total width of the cardholder&#39;s screen in pixels. Example: 1536.  | [optional] 
**http_browser_time_difference** | **String** | Time difference between UTC time and the cardholder browser local time, in minutes, Example:300  | [optional] 
**user_agent_browser_value** | **String** | Value of the User-Agent header sent by the customer&#39;s web browser. Note If the customer&#39;s browser provides a value, you must include it in your request.  | [optional] 


