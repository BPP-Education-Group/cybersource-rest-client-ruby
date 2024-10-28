=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'date'

module CyberSource
  class VTConfigCardNotPresentGlobalPaymentInformationPaymentInformation
    attr_accessor :display_card_verification_value

    attr_accessor :require_card_verification_value

    attr_accessor :accepted_card_types

    attr_accessor :display_credit_cards

    attr_accessor :display_echecks

    attr_accessor :display_debt_indicator

    attr_accessor :display_bill_payment

    attr_accessor :enable_echecks

    attr_accessor :display_ignore_e_check_avs_checkbox

    attr_accessor :first_name_required

    attr_accessor :last_name_required

    attr_accessor :display_first_name

    attr_accessor :display_last_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'display_card_verification_value' => :'displayCardVerificationValue',
        :'require_card_verification_value' => :'requireCardVerificationValue',
        :'accepted_card_types' => :'acceptedCardTypes',
        :'display_credit_cards' => :'displayCreditCards',
        :'display_echecks' => :'displayEchecks',
        :'display_debt_indicator' => :'displayDebtIndicator',
        :'display_bill_payment' => :'displayBillPayment',
        :'enable_echecks' => :'enableEchecks',
        :'display_ignore_e_check_avs_checkbox' => :'displayIgnoreECheckAvsCheckbox',
        :'first_name_required' => :'firstNameRequired',
        :'last_name_required' => :'lastNameRequired',
        :'display_first_name' => :'displayFirstName',
        :'display_last_name' => :'displayLastName'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'display_card_verification_value' => :'display_card_verification_value',
        :'require_card_verification_value' => :'require_card_verification_value',
        :'accepted_card_types' => :'accepted_card_types',
        :'display_credit_cards' => :'display_credit_cards',
        :'display_echecks' => :'display_echecks',
        :'display_debt_indicator' => :'display_debt_indicator',
        :'display_bill_payment' => :'display_bill_payment',
        :'enable_echecks' => :'enable_echecks',
        :'display_ignore_e_check_avs_checkbox' => :'display_ignore_e_check_avs_checkbox',
        :'first_name_required' => :'first_name_required',
        :'last_name_required' => :'last_name_required',
        :'display_first_name' => :'display_first_name',
        :'display_last_name' => :'display_last_name'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'display_card_verification_value' => :'Array<String>',
        :'require_card_verification_value' => :'Array<String>',
        :'accepted_card_types' => :'Array<String>',
        :'display_credit_cards' => :'BOOLEAN',
        :'display_echecks' => :'BOOLEAN',
        :'display_debt_indicator' => :'BOOLEAN',
        :'display_bill_payment' => :'BOOLEAN',
        :'enable_echecks' => :'BOOLEAN',
        :'display_ignore_e_check_avs_checkbox' => :'BOOLEAN',
        :'first_name_required' => :'BOOLEAN',
        :'last_name_required' => :'BOOLEAN',
        :'display_first_name' => :'BOOLEAN',
        :'display_last_name' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'displayCardVerificationValue')
        if (value = attributes[:'displayCardVerificationValue']).is_a?(Array)
          self.display_card_verification_value = value
        end
      end

      if attributes.has_key?(:'requireCardVerificationValue')
        if (value = attributes[:'requireCardVerificationValue']).is_a?(Array)
          self.require_card_verification_value = value
        end
      end

      if attributes.has_key?(:'acceptedCardTypes')
        if (value = attributes[:'acceptedCardTypes']).is_a?(Array)
          self.accepted_card_types = value
        end
      end

      if attributes.has_key?(:'displayCreditCards')
        self.display_credit_cards = attributes[:'displayCreditCards']
      end

      if attributes.has_key?(:'displayEchecks')
        self.display_echecks = attributes[:'displayEchecks']
      end

      if attributes.has_key?(:'displayDebtIndicator')
        self.display_debt_indicator = attributes[:'displayDebtIndicator']
      end

      if attributes.has_key?(:'displayBillPayment')
        self.display_bill_payment = attributes[:'displayBillPayment']
      end

      if attributes.has_key?(:'enableEchecks')
        self.enable_echecks = attributes[:'enableEchecks']
      end

      if attributes.has_key?(:'displayIgnoreECheckAvsCheckbox')
        self.display_ignore_e_check_avs_checkbox = attributes[:'displayIgnoreECheckAvsCheckbox']
      end

      if attributes.has_key?(:'firstNameRequired')
        self.first_name_required = attributes[:'firstNameRequired']
      end

      if attributes.has_key?(:'lastNameRequired')
        self.last_name_required = attributes[:'lastNameRequired']
      end

      if attributes.has_key?(:'displayFirstName')
        self.display_first_name = attributes[:'displayFirstName']
      end

      if attributes.has_key?(:'displayLastName')
        self.display_last_name = attributes[:'displayLastName']
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          display_card_verification_value == o.display_card_verification_value &&
          require_card_verification_value == o.require_card_verification_value &&
          accepted_card_types == o.accepted_card_types &&
          display_credit_cards == o.display_credit_cards &&
          display_echecks == o.display_echecks &&
          display_debt_indicator == o.display_debt_indicator &&
          display_bill_payment == o.display_bill_payment &&
          enable_echecks == o.enable_echecks &&
          display_ignore_e_check_avs_checkbox == o.display_ignore_e_check_avs_checkbox &&
          first_name_required == o.first_name_required &&
          last_name_required == o.last_name_required &&
          display_first_name == o.display_first_name &&
          display_last_name == o.display_last_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [display_card_verification_value, require_card_verification_value, accepted_card_types, display_credit_cards, display_echecks, display_debt_indicator, display_bill_payment, enable_echecks, display_ignore_e_check_avs_checkbox, first_name_required, last_name_required, display_first_name, display_last_name].hash
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
