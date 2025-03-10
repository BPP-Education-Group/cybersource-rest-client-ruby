# CyberSource::TssV2TransactionsGet200ResponseProcessingInformationAuthorizationOptionsInitiator

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | This field indicates whether the transaction is a merchant-initiated transaction or customer-initiated transaction.  Valid values: - **customer** - **merchant**  | [optional] 
**credential_stored_on_file** | **String** | Indicates to the issuing bank two things: - The merchant has received consent from the cardholder to store their card details on file - The merchant wants the issuing bank to check out the card details before the merchant initiates their first transaction for this cardholder. The purpose of the merchant-initiated transaction is to ensure that the cardholder&#39;s credentials are valid (that the card is not stolen or has restrictions) and that the card details are good to be stored on the merchant&#39;s file for future transactions.  Valid values: - &#x60;Y&#x60; means merchant will use this transaction to store payment credentials for follow-up merchant-initiated transactions. - &#x60;N&#x60; means merchant will not use this transaction to store payment credentials for follow-up merchant-initiated transactions.  **NOTE:** The value for this field does not correspond to any data in the TC 33 capture file5.  This field is supported only for Visa transactions on CyberSource through VisaNet.  | [optional] 
**stored_credential_used** | **String** | Indicates to an issuing bank whether a merchant-initiated transaction came from a card that was already stored on file.  Possible values: - **Y** means the merchant-initiated transaction came from a card that was already stored on file. - **N**  means the merchant-initiated transaction came from a card that was not stored on file.  | [optional] 
**merchant_initiated_transaction** | [**MerchantInitiatedTransactionObject**](MerchantInitiatedTransactionObject.md) |  | [optional] 


