# CyberSource::PushFunds201ResponseOrderInformationAmountDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_amount** | **String** | Grand total for the order. This value cannot be negative. You can include a decimal point (.), but no other special characters. CyberSource truncates the amount to the correct number of decimal places.  | [optional] 
**currency** | **String** | Currency used for the order. Use the three-character ISO Standard Currency Codes  | 
**settlement_amount** | **String** | This is a multicurrency field. It contains the transaction amount (field 4), converted to the Currency used to bill the cardholder&#39;s account. This field is returned for OCT transactions.  | [optional] 
**settlement_currency** | **String** | This is a multicurrency-only field. It contains a 3-digit numeric code that identifies the currency used by the issuer to bill the cardholder&#39;s account. This field is returned for OCT transactions.  | [optional] 


