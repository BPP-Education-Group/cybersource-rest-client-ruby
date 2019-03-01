# CyberSource::Ptsv2paymentsOrderInformationInvoiceDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_number** | **String** | Invoice Number. | [optional] 
**barcode_number** | **String** | Barcode Number. | [optional] 
**expiration_date** | **String** | Expiration Date. | [optional] 
**purchase_order_number** | **String** | Value used by your customer to identify the order. This value is typically a purchase order number. CyberSource recommends that you do not populate the field with all zeros or nines.  For processor-specific information, see the user_po field in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html)  | [optional] 
**purchase_order_date** | **String** | Date the order was processed. &#x60;Format: YYYY-MM-DD&#x60;.  For processor-specific information, see the purchaser_order_date field in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html)  | [optional] 
**purchase_contact_name** | **String** | The name of the individual or the company contacted for company authorized purchases.  For processor-specific information, see the authorized_contact_name field in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html)  | [optional] 
**taxable** | **BOOLEAN** | Flag that indicates whether an order is taxable. This value must be true if the sum of all _lineItems[].taxAmount_ values &gt; 0.  If you do not include any _lineItems[].taxAmount_ values in your request, CyberSource does not include _invoiceDetails.taxable_ in the data it sends to the processor.  For processor-specific information, see the tax_indicator field in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html)  Possible values:  - **true**  - **false**  | [optional] 
**vat_invoice_reference_number** | **String** | VAT invoice number associated with the transaction.  For processor-specific information, see the vat_invoice_ref_number field in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html)  | [optional] 
**commodity_code** | **String** | International description code of the overall order’s goods or services or the Categorizes purchases for VAT reporting. Contact your acquirer for a list of codes.  For processor-specific information, see the summary_commodity_code field in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html)  | [optional] 
**merchandise_code** | **Float** | Identifier for the merchandise. Possible value:   - 1000: Gift card  This field is supported only for **American Express Direct**.  | [optional] 
**transaction_advice_addendum** | [**Array&lt;Ptsv2paymentsOrderInformationInvoiceDetailsTransactionAdviceAddendum&gt;**](Ptsv2paymentsOrderInformationInvoiceDetailsTransactionAdviceAddendum.md) |  | [optional] 
**reference_data_code** | **String** | Code that identifies the value of the reference_data_number field. For the possible values, see Reference Data Codes.  This field is a pass-through, which means that CyberSource does not verify the value or modify it in any way before sending it to the processor.  | [optional] 
**reference_data_number** | **String** | Reference number. The meaning of this value is identified by the value of the referenceDataCode field.  This field is a pass-through, which means that CyberSource does not verify the value or modify it in any way before sending it to the processor.  | [optional] 


