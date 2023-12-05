=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Riskv1decisionsOrderInformationLineItems
    # Total amount for the item. Normally calculated as the unit price times quantity.  When `orderInformation.lineItems[].productCode` is \"gift_card\", this is the purchase amount total for prepaid gift cards in major units.  Example: 123.45 USD = 123 
    attr_accessor :total_amount

    # Per-item price of the product. This value for this field cannot be negative.  You must include either this field or the request-level field `orderInformation.amountDetails.totalAmount` in your request.  You can include a decimal point (.), but you cannot include any other special characters. The value is truncated to the correct number of decimal places.  #### DCC with a Third-Party Provider Set this field to the converted amount that was returned by the DCC provider. You must include either the 1st line item in the order and this field, or the request-level field `orderInformation.amountDetails.totalAmount` in your request.  #### FDMS South If you accept IDR or CLP currencies, see the entry for FDMS South in the [Merchant Descriptors Using the SCMP API Guide.] (https://apps.cybersource.com/library/documentation/dev_guides/Merchant_Descriptors_SCMP_API/html/)  #### Tax Calculation Required field for U.S., Canadian, international and value added taxes.  #### Zero Amount Authorizations If your processor supports zero amount authorizations, you can set this field to 0 for the authorization to check if the card is lost or stolen.  #### Maximum Field Lengths For GPN and JCN Gateway: Decimal (10) All other processors: Decimal (15) 
    attr_accessor :unit_price

    # Number of units for this order. Must be a non-negative integer.  The default is `1`. For an authorization or capture transaction (`processingOptions.capture` is set to `true` or `false`), this field is required when `orderInformation.lineItems[].productCode` is not `default` or one of the other values related to shipping and/or handling.  #### Tax Calculation Optional field for U.S., Canadian, international tax, and value added taxes. 
    attr_accessor :quantity

    # When `orderInformation.lineItems[].productCode` is \"gift_card\", this is the currency used for the gift card purchase.  For details, see `pa_gift_card_currency` field description in [CyberSource Payer Authentication Using the SCMP API.] (https://apps.cybersource.com/library/documentation/dev_guides/Payer_Authentication_SCMP_API/Payer_Authentication_SCMP_API.pdf)  For the possible values, see the [ISO Standard Currency Codes.](http://apps.cybersource.com/library/documentation/sbc/quickref/currencies.pdf) 
    attr_accessor :gift_card_currency

    # Product identifier code. Also known as the Stock Keeping Unit (SKU) code for the product.  For an authorization or capture transaction (`processingOptions.capture` is set to `true` or `false`), this field is required when `orderInformation.lineItems[].productCode` is not set to **default** or one of the other values that are related to shipping and/or handling.  #### Tax Calculation Optional field for U.S. and Canadian taxes. Not applicable to international and value added taxes. For an authorization or capture transaction (`processingOptions.capture` is set to `true` or `false`), this field is required when `orderInformation.lineItems[].productCode` is not `default` or one of the values related to shipping and/or handling. 
    attr_accessor :product_sku

    # Indicates the level of risk for the product. This field can contain one of the following values: - `low`: The product is associated with few chargebacks. - `normal`: The product is associated with a normal number of chargebacks. - `high`: The product is associated with many chargebacks. 
    attr_accessor :product_risk

    # Brief description of item.
    attr_accessor :product_description

    # For an authorization or capture transaction (`processingOptions.capture` is `true` or `false`), this field is required when `orderInformation.lineItems[].productCode` is not `default` or one of the other values that are related to shipping and/or handling.  #### Tax Calculation Optional field for U.S., Canadian, international tax, and value added taxes. 
    attr_accessor :product_name

    # Type of product. The value for this field is used to identify the product category (electronic, handling, physical, service, or shipping). The default value is `default`.  If you are performing an authorization transaction (`processingOptions.capture` is set to `false`), and you set this field to a value other than `default` or one of the values related to shipping and/or handling, then `orderInformation.lineItems[].quantity`, `orderInformation.lineItems[].productName`, and `orderInformation.lineItems[].productSku` fields are required.  Optional field.  For details, see the `product_code` field description in the [Credit Card Services Using the SCMP API Guide](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/).  #### Tax Calculation Optional field for U.S., Canadian, international tax, and value added taxes.  The Product Codes for the tax service are located in the Cybersource Tax Codes guide. Contact Customer Support to request the guide. If you don't send a tax service Product Code in your tax request, product-based rules or exemptions will not be applied and the transaction will default to fully taxable in the locations where you've indicated you need to collect tax [by way of nexus, no nexus, or seller registration number fields]. 
    attr_accessor :product_code

    # This field is only used in DM service.  Determines whether to assign risk to the order if the billing and shipping addresses specify different cities, states, or countries. This field can contain one of the following values: - true: Orders are assigned only slight additional risk if billing and shipping addresses are different. - false: Orders are assigned higher additional risk if billing and shipping addresses are different. 
    attr_accessor :gift

    # Product's identifier code. This field is inserted into the outgoing message without being parsed or formatted. This field is included as Distributor product SKU (Offer) in the list of API fields with which you can create custom rules. 
    attr_accessor :distributor_product_sku

    attr_accessor :passenger

    # Destination to where the item will be shipped. Example: Commercial, Residential, Store 
    attr_accessor :shipping_destination_types

    # Total tax to apply to the product. This value cannot be negative. The tax amount and the offer amount must be in the same currency. The tax amount field is additive.  The following example uses a two-exponent currency such as USD:   1. You include each line item in your request.  ..- 1st line item has amount=10.00, quantity=1, and taxAmount=0.80  ..- 2nd line item has amount=20.00, quantity=1, and taxAmount=1.60  2. The total amount authorized will be 32.40, not 30.00 with 2.40 of tax included.  Optional field.  #### Airlines processing Tax portion of the order amount. This value cannot exceed 99999999999999 (fourteen 9s). Format: English characters only. Optional request field for a line item.  #### Tax Calculation Optional field for U.S., Canadian, international tax, and value added taxes.  Note if you send this field in your tax request, the value in the field will override the tax engine 
    attr_accessor :tax_amount

    attr_accessor :allowed_export_countries

    attr_accessor :restricted_export_countries

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'total_amount' => :'totalAmount',
        :'unit_price' => :'unitPrice',
        :'quantity' => :'quantity',
        :'gift_card_currency' => :'giftCardCurrency',
        :'product_sku' => :'productSKU',
        :'product_risk' => :'productRisk',
        :'product_description' => :'productDescription',
        :'product_name' => :'productName',
        :'product_code' => :'productCode',
        :'gift' => :'gift',
        :'distributor_product_sku' => :'distributorProductSku',
        :'passenger' => :'passenger',
        :'shipping_destination_types' => :'shippingDestinationTypes',
        :'tax_amount' => :'taxAmount',
        :'allowed_export_countries' => :'allowedExportCountries',
        :'restricted_export_countries' => :'restrictedExportCountries'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'total_amount' => :'total_amount',
        :'unit_price' => :'unit_price',
        :'quantity' => :'quantity',
        :'gift_card_currency' => :'gift_card_currency',
        :'product_sku' => :'product_sku',
        :'product_risk' => :'product_risk',
        :'product_description' => :'product_description',
        :'product_name' => :'product_name',
        :'product_code' => :'product_code',
        :'gift' => :'gift',
        :'distributor_product_sku' => :'distributor_product_sku',
        :'passenger' => :'passenger',
        :'shipping_destination_types' => :'shipping_destination_types',
        :'tax_amount' => :'tax_amount',
        :'allowed_export_countries' => :'allowed_export_countries',
        :'restricted_export_countries' => :'restricted_export_countries'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'total_amount' => :'String',
        :'unit_price' => :'String',
        :'quantity' => :'Integer',
        :'gift_card_currency' => :'Integer',
        :'product_sku' => :'String',
        :'product_risk' => :'String',
        :'product_description' => :'String',
        :'product_name' => :'String',
        :'product_code' => :'String',
        :'gift' => :'BOOLEAN',
        :'distributor_product_sku' => :'String',
        :'passenger' => :'Ptsv2paymentsOrderInformationPassenger',
        :'shipping_destination_types' => :'String',
        :'tax_amount' => :'String',
        :'allowed_export_countries' => :'Array<String>',
        :'restricted_export_countries' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'totalAmount')
        self.total_amount = attributes[:'totalAmount']
      end

      if attributes.has_key?(:'unitPrice')
        self.unit_price = attributes[:'unitPrice']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'giftCardCurrency')
        self.gift_card_currency = attributes[:'giftCardCurrency']
      end

      if attributes.has_key?(:'productSKU')
        self.product_sku = attributes[:'productSKU']
      end

      if attributes.has_key?(:'productRisk')
        self.product_risk = attributes[:'productRisk']
      end

      if attributes.has_key?(:'productDescription')
        self.product_description = attributes[:'productDescription']
      end

      if attributes.has_key?(:'productName')
        self.product_name = attributes[:'productName']
      end

      if attributes.has_key?(:'productCode')
        self.product_code = attributes[:'productCode']
      end

      if attributes.has_key?(:'gift')
        self.gift = attributes[:'gift']
      end

      if attributes.has_key?(:'distributorProductSku')
        self.distributor_product_sku = attributes[:'distributorProductSku']
      end

      if attributes.has_key?(:'passenger')
        self.passenger = attributes[:'passenger']
      end

      if attributes.has_key?(:'shippingDestinationTypes')
        self.shipping_destination_types = attributes[:'shippingDestinationTypes']
      end

      if attributes.has_key?(:'taxAmount')
        self.tax_amount = attributes[:'taxAmount']
      end

      if attributes.has_key?(:'allowedExportCountries')
        if (value = attributes[:'allowedExportCountries']).is_a?(Array)
          self.allowed_export_countries = value
        end
      end

      if attributes.has_key?(:'restrictedExportCountries')
        if (value = attributes[:'restrictedExportCountries']).is_a?(Array)
          self.restricted_export_countries = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] total_amount Value to be assigned
    def total_amount=(total_amount)
      @total_amount = total_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] unit_price Value to be assigned
    def unit_price=(unit_price)
      @unit_price = unit_price
    end

    # Custom attribute writer method with validation
    # @param [Object] quantity Value to be assigned
    def quantity=(quantity)
      @quantity = quantity
    end

    # Custom attribute writer method with validation
    # @param [Object] product_sku Value to be assigned
    def product_sku=(product_sku)
      @product_sku = product_sku
    end

    # Custom attribute writer method with validation
    # @param [Object] product_risk Value to be assigned
    def product_risk=(product_risk)
      @product_risk = product_risk
    end

    # Custom attribute writer method with validation
    # @param [Object] product_name Value to be assigned
    def product_name=(product_name)
      @product_name = product_name
    end

    # Custom attribute writer method with validation
    # @param [Object] product_code Value to be assigned
    def product_code=(product_code)
      @product_code = product_code
    end

    # Custom attribute writer method with validation
    # @param [Object] distributor_product_sku Value to be assigned
    def distributor_product_sku=(distributor_product_sku)
      @distributor_product_sku = distributor_product_sku
    end

    # Custom attribute writer method with validation
    # @param [Object] shipping_destination_types Value to be assigned
    def shipping_destination_types=(shipping_destination_types)
      @shipping_destination_types = shipping_destination_types
    end

    # Custom attribute writer method with validation
    # @param [Object] tax_amount Value to be assigned
    def tax_amount=(tax_amount)
      @tax_amount = tax_amount
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          total_amount == o.total_amount &&
          unit_price == o.unit_price &&
          quantity == o.quantity &&
          gift_card_currency == o.gift_card_currency &&
          product_sku == o.product_sku &&
          product_risk == o.product_risk &&
          product_description == o.product_description &&
          product_name == o.product_name &&
          product_code == o.product_code &&
          gift == o.gift &&
          distributor_product_sku == o.distributor_product_sku &&
          passenger == o.passenger &&
          shipping_destination_types == o.shipping_destination_types &&
          tax_amount == o.tax_amount &&
          allowed_export_countries == o.allowed_export_countries &&
          restricted_export_countries == o.restricted_export_countries
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [total_amount, unit_price, quantity, gift_card_currency, product_sku, product_risk, product_description, product_name, product_code, gift, distributor_product_sku, passenger, shipping_destination_types, tax_amount, allowed_export_countries, restricted_export_countries].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{self.class.json_map[key]}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{self.class.json_map[key]}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = CyberSource.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
