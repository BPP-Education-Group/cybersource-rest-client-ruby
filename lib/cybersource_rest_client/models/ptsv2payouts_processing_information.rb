=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv2payoutsProcessingInformation
    # Payouts transaction type.  Applicable Processors: FDC Compass, Paymentech, CtV  Possible values:  **Credit Card Bill Payment**   - **CP**: credit card bill payment  **Funds Disbursement**   - **FD**: funds disbursement  - **GD**: government disbursement  - **MD**: merchant disbursement  **Money Transfer**   - **AA**: account to account. Sender and receiver are same person.  - **PP**: person to person. Sender and receiver are different.  **Prepaid Load**   - **TU**: top up 
    attr_accessor :business_application_id

    # This field is optionally used by Push Payments Gateway participants (merchants and acquirers) to get the attributes for specified networks only. The networks specified in this field must be a subset of the information provided during program enrollment. Refer to Sharing Group Code/Network Routing Order. Note: Supported only in US for domestic transactions involving Push Payments Gateway Service.  VisaNet checks to determine if there are issuer routing preferences for any of the networks specified by the network routing order. If an issuer preference exists for one of the specified debit networks, VisaNet makes a routing selection based on the issuer's preference.  If an issuer preference exists for more than one of the specified debit networks, or if no issuer preference exists, VisaNet makes a selection based on the acquirer's routing priorities.   For details, see the `network_order` field description in [BIN Lookup Service Using the SCMP API.](http://apps.cybersource.com/library/documentation/BIN_Lookup/BIN_Lookup_SCMP_API/html/) 
    attr_accessor :network_routing_order

    # Type of transaction.  Value for an OCT transaction: - `internet`  For details, see the `e_commerce_indicator` field description in [Payouts Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/payouts_SCMP/html/) 
    attr_accessor :commerce_indicator

    # Please check with Cybersource customer support to see if your merchant account is configured correctly so you can include this field in your request. * For Payouts: max length for FDCCompass is String (22). 
    attr_accessor :reconciliation_id

    attr_accessor :payouts_options

    # Transaction reason code. 
    attr_accessor :transaction_reason

    # This will send purpose of funds code for original credit transactions (OCTs). 
    attr_accessor :purpose_of_payment

    attr_accessor :funding_options

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'business_application_id' => :'businessApplicationId',
        :'network_routing_order' => :'networkRoutingOrder',
        :'commerce_indicator' => :'commerceIndicator',
        :'reconciliation_id' => :'reconciliationId',
        :'payouts_options' => :'payoutsOptions',
        :'transaction_reason' => :'transactionReason',
        :'purpose_of_payment' => :'purposeOfPayment',
        :'funding_options' => :'fundingOptions'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'business_application_id' => :'business_application_id',
        :'network_routing_order' => :'network_routing_order',
        :'commerce_indicator' => :'commerce_indicator',
        :'reconciliation_id' => :'reconciliation_id',
        :'payouts_options' => :'payouts_options',
        :'transaction_reason' => :'transaction_reason',
        :'purpose_of_payment' => :'purpose_of_payment',
        :'funding_options' => :'funding_options'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'business_application_id' => :'String',
        :'network_routing_order' => :'String',
        :'commerce_indicator' => :'String',
        :'reconciliation_id' => :'String',
        :'payouts_options' => :'Ptsv2payoutsProcessingInformationPayoutsOptions',
        :'transaction_reason' => :'String',
        :'purpose_of_payment' => :'String',
        :'funding_options' => :'Ptsv2payoutsProcessingInformationFundingOptions'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'businessApplicationId')
        self.business_application_id = attributes[:'businessApplicationId']
      end

      if attributes.has_key?(:'networkRoutingOrder')
        self.network_routing_order = attributes[:'networkRoutingOrder']
      end

      if attributes.has_key?(:'commerceIndicator')
        self.commerce_indicator = attributes[:'commerceIndicator']
      end

      if attributes.has_key?(:'reconciliationId')
        self.reconciliation_id = attributes[:'reconciliationId']
      end

      if attributes.has_key?(:'payoutsOptions')
        self.payouts_options = attributes[:'payoutsOptions']
      end

      if attributes.has_key?(:'transactionReason')
        self.transaction_reason = attributes[:'transactionReason']
      end

      if attributes.has_key?(:'purposeOfPayment')
        self.purpose_of_payment = attributes[:'purposeOfPayment']
      end

      if attributes.has_key?(:'fundingOptions')
        self.funding_options = attributes[:'fundingOptions']
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
    # @param [Object] business_application_id Value to be assigned
    def business_application_id=(business_application_id)
      @business_application_id = business_application_id
    end

    # Custom attribute writer method with validation
    # @param [Object] network_routing_order Value to be assigned
    def network_routing_order=(network_routing_order)
      @network_routing_order = network_routing_order
    end

    # Custom attribute writer method with validation
    # @param [Object] commerce_indicator Value to be assigned
    def commerce_indicator=(commerce_indicator)
      @commerce_indicator = commerce_indicator
    end

    # Custom attribute writer method with validation
    # @param [Object] reconciliation_id Value to be assigned
    def reconciliation_id=(reconciliation_id)
      @reconciliation_id = reconciliation_id
    end

    # Custom attribute writer method with validation
    # @param [Object] transaction_reason Value to be assigned
    def transaction_reason=(transaction_reason)
      @transaction_reason = transaction_reason
    end

    # Custom attribute writer method with validation
    # @param [Object] purpose_of_payment Value to be assigned
    def purpose_of_payment=(purpose_of_payment)
      @purpose_of_payment = purpose_of_payment
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          business_application_id == o.business_application_id &&
          network_routing_order == o.network_routing_order &&
          commerce_indicator == o.commerce_indicator &&
          reconciliation_id == o.reconciliation_id &&
          payouts_options == o.payouts_options &&
          transaction_reason == o.transaction_reason &&
          purpose_of_payment == o.purpose_of_payment &&
          funding_options == o.funding_options
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [business_application_id, network_routing_order, commerce_indicator, reconciliation_id, payouts_options, transaction_reason, purpose_of_payment, funding_options].hash
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
