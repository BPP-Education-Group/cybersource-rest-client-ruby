=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'date'

module CyberSource
  class TssV2TransactionsGet200ResponseConsumerAuthenticationInformationStrongAuthentication
    # This field will contain the low value exemption indicator with one of the following values: Possible values: - `0`  ( low value exemption does not apply to the transaction) - `1` (Transaction exempt from SCA as the merchant/acquirer has determined it to be a low value payment) 
    attr_accessor :low_value_exemption_indicator

    # This field will contain the transaction risk analysis exemption indicator with one of the following values: Possible values: - `0`  (TRA exemption does not apply to the transaction) - `1` (Transaction exempt from SCA as the merchant/acquirer has determined it to be low risk in accordance with the criteria defined by PSD2/RTS) 
    attr_accessor :risk_analysis_exemption_indicator

    # Possible values: - `0`  (Trusted merchant exemption does not apply to the transaction) - `1` (Transaction exempt from SCA as it originated at a merchant trusted by the cardholder) 
    attr_accessor :trusted_merchant_exemption_indicator

    # This field will contain the secure corporate payment exemption indicator with one of the following values: Possible values: - `0`  (SCA exemption does not apply to the transaction) - `1` (Transaction exempt from SCA as the merchant/acquirer has determined it as a secure corporate payment) 
    attr_accessor :secure_corporate_payment_indicator

    # This field will contain the delegated authentication exemption indicator with one of the following values: Possible values: - `0`  (delegated Authentication exemption does not apply to the transaction) - `1` (Transaction exempt from SCA as authentication has been delegated to other provider (PSP,Acquirer)) 
    attr_accessor :delegated_authentication_exemption_indicator

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'low_value_exemption_indicator' => :'lowValueExemptionIndicator',
        :'risk_analysis_exemption_indicator' => :'riskAnalysisExemptionIndicator',
        :'trusted_merchant_exemption_indicator' => :'trustedMerchantExemptionIndicator',
        :'secure_corporate_payment_indicator' => :'secureCorporatePaymentIndicator',
        :'delegated_authentication_exemption_indicator' => :'delegatedAuthenticationExemptionIndicator'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'low_value_exemption_indicator' => :'low_value_exemption_indicator',
        :'risk_analysis_exemption_indicator' => :'risk_analysis_exemption_indicator',
        :'trusted_merchant_exemption_indicator' => :'trusted_merchant_exemption_indicator',
        :'secure_corporate_payment_indicator' => :'secure_corporate_payment_indicator',
        :'delegated_authentication_exemption_indicator' => :'delegated_authentication_exemption_indicator'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'low_value_exemption_indicator' => :'String',
        :'risk_analysis_exemption_indicator' => :'String',
        :'trusted_merchant_exemption_indicator' => :'String',
        :'secure_corporate_payment_indicator' => :'String',
        :'delegated_authentication_exemption_indicator' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'lowValueExemptionIndicator')
        self.low_value_exemption_indicator = attributes[:'lowValueExemptionIndicator']
      end

      if attributes.has_key?(:'riskAnalysisExemptionIndicator')
        self.risk_analysis_exemption_indicator = attributes[:'riskAnalysisExemptionIndicator']
      end

      if attributes.has_key?(:'trustedMerchantExemptionIndicator')
        self.trusted_merchant_exemption_indicator = attributes[:'trustedMerchantExemptionIndicator']
      end

      if attributes.has_key?(:'secureCorporatePaymentIndicator')
        self.secure_corporate_payment_indicator = attributes[:'secureCorporatePaymentIndicator']
      end

      if attributes.has_key?(:'delegatedAuthenticationExemptionIndicator')
        self.delegated_authentication_exemption_indicator = attributes[:'delegatedAuthenticationExemptionIndicator']
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
    # @param [Object] low_value_exemption_indicator Value to be assigned
    def low_value_exemption_indicator=(low_value_exemption_indicator)
      @low_value_exemption_indicator = low_value_exemption_indicator
    end

    # Custom attribute writer method with validation
    # @param [Object] risk_analysis_exemption_indicator Value to be assigned
    def risk_analysis_exemption_indicator=(risk_analysis_exemption_indicator)
      @risk_analysis_exemption_indicator = risk_analysis_exemption_indicator
    end

    # Custom attribute writer method with validation
    # @param [Object] trusted_merchant_exemption_indicator Value to be assigned
    def trusted_merchant_exemption_indicator=(trusted_merchant_exemption_indicator)
      @trusted_merchant_exemption_indicator = trusted_merchant_exemption_indicator
    end

    # Custom attribute writer method with validation
    # @param [Object] secure_corporate_payment_indicator Value to be assigned
    def secure_corporate_payment_indicator=(secure_corporate_payment_indicator)
      @secure_corporate_payment_indicator = secure_corporate_payment_indicator
    end

    # Custom attribute writer method with validation
    # @param [Object] delegated_authentication_exemption_indicator Value to be assigned
    def delegated_authentication_exemption_indicator=(delegated_authentication_exemption_indicator)
      @delegated_authentication_exemption_indicator = delegated_authentication_exemption_indicator
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          low_value_exemption_indicator == o.low_value_exemption_indicator &&
          risk_analysis_exemption_indicator == o.risk_analysis_exemption_indicator &&
          trusted_merchant_exemption_indicator == o.trusted_merchant_exemption_indicator &&
          secure_corporate_payment_indicator == o.secure_corporate_payment_indicator &&
          delegated_authentication_exemption_indicator == o.delegated_authentication_exemption_indicator
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [low_value_exemption_indicator, risk_analysis_exemption_indicator, trusted_merchant_exemption_indicator, secure_corporate_payment_indicator, delegated_authentication_exemption_indicator].hash
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
