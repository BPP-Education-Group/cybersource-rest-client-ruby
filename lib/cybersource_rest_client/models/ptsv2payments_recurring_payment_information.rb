=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  # This object contains recurring payment information.
  class Ptsv2paymentsRecurringPaymentInformation
    # The date after which no further recurring authorizations should be performed. Format: `YYYY-MM-DD` **Note** This field is required for recurring transactions. 
    attr_accessor :end_date

    # Integer value indicating the minimum number of days between recurring authorizations. A frequency of monthly is indicated by the value 28. Multiple of 28 days will be used to indicate months.  Example: 6 months = 168  Example values accepted (31 days): - 31 - 031 - 0031  **Note** This field is required for recurring transactions. 
    attr_accessor :frequency

    # Total number of payments for the duration of the recurring subscription. 
    attr_accessor :number_of_payments

    # Date of original purchase. Required for recurring transactions. Format: `YYYY-MM-DDTHH:MM:SSZ` **Note**: If this field is empty, the current date is used. 
    attr_accessor :original_purchase_date

    # This field is mandatory for Cartes Bancaires recurring transactions on Credit Mutuel-CIC.       This field records recurring sequence, e.g. 1st for initial,  2 for subsequent, 3 etc 
    attr_accessor :sequence_number

    # This contains the type of recurring payment. Valid Values : 1 - Registration/First transaction 2 - Subsequent transaction 3 - Modification 4 - Cancellation 
    attr_accessor :type

    # This value indicates how often a recurring payment occurs. Valid Values : • 01 (Daily) • 02 (Twice weekly) • 03 (Weekly) • 04 (Ten days) • 05 (Fortnightly) • 06 (Monthly) • 07 (Every two months) • 08 (Trimester) • 09 (Quarterly) • 10 (Twice yearly) • 11 (Annually) • 12 (Unscheduled) 
    attr_accessor :occurrence

    # This tag will contain a value that indicates whether or not the recurring payment transaction has been validated. Valid values : 0- Not validated 1- Validated 
    attr_accessor :validation_indicator

    # Indicates recurring amount type agreed by the cardholder Valid Values : 1- Fixed amount recurring payment 2- Recurring payment with maximum amount 
    attr_accessor :amount_type

    # This API field will contain the maximum amount agreed to by the cardholder. The currency of this amount will be specified in Field 49—Currency Code,Transaction. 
    attr_accessor :maximum_amount

    # This will contain a unique reference number for the recurring payment transaction. 
    attr_accessor :reference_number

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'end_date' => :'endDate',
        :'frequency' => :'frequency',
        :'number_of_payments' => :'numberOfPayments',
        :'original_purchase_date' => :'originalPurchaseDate',
        :'sequence_number' => :'sequenceNumber',
        :'type' => :'type',
        :'occurrence' => :'occurrence',
        :'validation_indicator' => :'validationIndicator',
        :'amount_type' => :'amountType',
        :'maximum_amount' => :'maximumAmount',
        :'reference_number' => :'referenceNumber'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'end_date' => :'String',
        :'frequency' => :'Integer',
        :'number_of_payments' => :'Integer',
        :'original_purchase_date' => :'String',
        :'sequence_number' => :'Integer',
        :'type' => :'String',
        :'occurrence' => :'String',
        :'validation_indicator' => :'String',
        :'amount_type' => :'String',
        :'maximum_amount' => :'String',
        :'reference_number' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'endDate')
        self.end_date = attributes[:'endDate']
      end

      if attributes.has_key?(:'frequency')
        self.frequency = attributes[:'frequency']
      end

      if attributes.has_key?(:'numberOfPayments')
        self.number_of_payments = attributes[:'numberOfPayments']
      end

      if attributes.has_key?(:'originalPurchaseDate')
        self.original_purchase_date = attributes[:'originalPurchaseDate']
      end

      if attributes.has_key?(:'sequenceNumber')
        self.sequence_number = attributes[:'sequenceNumber']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'occurrence')
        self.occurrence = attributes[:'occurrence']
      end

      if attributes.has_key?(:'validationIndicator')
        self.validation_indicator = attributes[:'validationIndicator']
      end

      if attributes.has_key?(:'amountType')
        self.amount_type = attributes[:'amountType']
      end

      if attributes.has_key?(:'maximumAmount')
        self.maximum_amount = attributes[:'maximumAmount']
      end

      if attributes.has_key?(:'referenceNumber')
        self.reference_number = attributes[:'referenceNumber']
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
    # @param [Object] end_date Value to be assigned
    def end_date=(end_date)
      @end_date = end_date
    end

    # Custom attribute writer method with validation
    # @param [Object] original_purchase_date Value to be assigned
    def original_purchase_date=(original_purchase_date)
      @original_purchase_date = original_purchase_date
    end

    # Custom attribute writer method with validation
    # @param [Object] type Value to be assigned
    def type=(type)
      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] occurrence Value to be assigned
    def occurrence=(occurrence)
      @occurrence = occurrence
    end

    # Custom attribute writer method with validation
    # @param [Object] validation_indicator Value to be assigned
    def validation_indicator=(validation_indicator)
      @validation_indicator = validation_indicator
    end

    # Custom attribute writer method with validation
    # @param [Object] amount_type Value to be assigned
    def amount_type=(amount_type)
      @amount_type = amount_type
    end

    # Custom attribute writer method with validation
    # @param [Object] maximum_amount Value to be assigned
    def maximum_amount=(maximum_amount)
      @maximum_amount = maximum_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] reference_number Value to be assigned
    def reference_number=(reference_number)
      @reference_number = reference_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          end_date == o.end_date &&
          frequency == o.frequency &&
          number_of_payments == o.number_of_payments &&
          original_purchase_date == o.original_purchase_date &&
          sequence_number == o.sequence_number &&
          type == o.type &&
          occurrence == o.occurrence &&
          validation_indicator == o.validation_indicator &&
          amount_type == o.amount_type &&
          maximum_amount == o.maximum_amount &&
          reference_number == o.reference_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [end_date, frequency, number_of_payments, original_purchase_date, sequence_number, type, occurrence, validation_indicator, amount_type, maximum_amount, reference_number].hash
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
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
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
