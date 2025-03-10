# CyberSource::Riskv1authenticationsBuyerInformation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**merchant_customer_id** | **String** | Your identifier for the customer.  When a subscription or customer profile is being created, the maximum length for this field for most processors is 30. Otherwise, the maximum length is 100.  #### Comercio Latino For recurring payments in Mexico, the value is the customer&#39;s contract number. Note Before you request the authorization, you must inform the issuer of the customer contract numbers that will be used for recurring transactions.  #### Worldpay VAP For a follow-on credit with Worldpay VAP, CyberSource checks the following locations, in the order given, for a customer account ID value and uses the first value it finds: 1. &#x60;customer_account_id&#x60; value in the follow-on credit request 2. Customer account ID value that was used for the capture that is being credited 3. Customer account ID value that was used for the original authorization If a customer account ID value cannot be found in any of these locations, then no value is used.  | [optional] 
**personal_identification** | [**Array&lt;Ptsv2paymentsBuyerInformationPersonalIdentification&gt;**](Ptsv2paymentsBuyerInformationPersonalIdentification.md) | This array contains detailed information about the buyer&#39;s form of persoanl identification. | [optional] 
**mobile_phone** | **Integer** | Cardholder&#39;s mobile phone number. **Important** Required for Visa Secure transactions in Brazil. Do not use this request field for any other types of transactions.  | 
**work_phone** | **Integer** | Cardholder&#39;s work phone number. | [optional] 


