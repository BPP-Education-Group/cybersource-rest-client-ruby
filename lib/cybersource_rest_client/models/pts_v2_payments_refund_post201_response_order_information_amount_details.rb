=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'date'

module CyberSource
  class PtsV2PaymentsRefundPost201ResponseOrderInformationAmountDetails
    # This is a multicurrency field. It contains the transaction amount (field 4), converted to the Currency used to bill the cardholder's account. This field is returned for OCT transactions. 
    attr_accessor :settlement_amount

    # This is a multicurrency-only field. It contains a 3-digit numeric code that identifies the currency used by the issuer to bill the cardholder's account. This field is returned for OCT transactions. 
    attr_accessor :settlement_currency

    # Exchange rate returned by the DCC service. Includes a decimal point and a maximum of 4 decimal places. 
    attr_accessor :exchange_rate

    # Set this field to the converted amount that was returned by the DCC provider. 
    attr_accessor :foreign_amount

    # Set this field to the converted amount that was returned by the DCC provider. 
    attr_accessor :foreign_currency

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'settlement_amount' => :'settlementAmount',
        :'settlement_currency' => :'settlementCurrency',
        :'exchange_rate' => :'exchangeRate',
        :'foreign_amount' => :'foreignAmount',
        :'foreign_currency' => :'foreignCurrency'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'settlement_amount' => :'settlement_amount',
        :'settlement_currency' => :'settlement_currency',
        :'exchange_rate' => :'exchange_rate',
        :'foreign_amount' => :'foreign_amount',
        :'foreign_currency' => :'foreign_currency'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'settlement_amount' => :'String',
        :'settlement_currency' => :'String',
        :'exchange_rate' => :'String',
        :'foreign_amount' => :'String',
        :'foreign_currency' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'settlementAmount')
        self.settlement_amount = attributes[:'settlementAmount']
      end

      if attributes.has_key?(:'settlementCurrency')
        self.settlement_currency = attributes[:'settlementCurrency']
      end

      if attributes.has_key?(:'exchangeRate')
        self.exchange_rate = attributes[:'exchangeRate']
      end

      if attributes.has_key?(:'foreignAmount')
        self.foreign_amount = attributes[:'foreignAmount']
      end

      if attributes.has_key?(:'foreignCurrency')
        self.foreign_currency = attributes[:'foreignCurrency']
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
    # @param [Object] settlement_amount Value to be assigned
    def settlement_amount=(settlement_amount)
      @settlement_amount = settlement_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] settlement_currency Value to be assigned
    def settlement_currency=(settlement_currency)
      @settlement_currency = settlement_currency
    end

    # Custom attribute writer method with validation
    # @param [Object] exchange_rate Value to be assigned
    def exchange_rate=(exchange_rate)
      @exchange_rate = exchange_rate
    end

    # Custom attribute writer method with validation
    # @param [Object] foreign_amount Value to be assigned
    def foreign_amount=(foreign_amount)
      @foreign_amount = foreign_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] foreign_currency Value to be assigned
    def foreign_currency=(foreign_currency)
      @foreign_currency = foreign_currency
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          settlement_amount == o.settlement_amount &&
          settlement_currency == o.settlement_currency &&
          exchange_rate == o.exchange_rate &&
          foreign_amount == o.foreign_amount &&
          foreign_currency == o.foreign_currency
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [settlement_amount, settlement_currency, exchange_rate, foreign_amount, foreign_currency].hash
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
