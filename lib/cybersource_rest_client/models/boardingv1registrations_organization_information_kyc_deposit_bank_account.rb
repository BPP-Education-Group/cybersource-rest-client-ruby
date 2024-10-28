=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'date'

module CyberSource
  class Boardingv1registrationsOrganizationInformationKYCDepositBankAccount
    attr_accessor :account_holder_name

    # Possible values: - checking - savings - corporatechecking - corporatesavings
    attr_accessor :account_type

    attr_accessor :account_routing_number

    attr_accessor :account_number

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_holder_name' => :'accountHolderName',
        :'account_type' => :'accountType',
        :'account_routing_number' => :'accountRoutingNumber',
        :'account_number' => :'accountNumber'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'account_holder_name' => :'account_holder_name',
        :'account_type' => :'account_type',
        :'account_routing_number' => :'account_routing_number',
        :'account_number' => :'account_number'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'account_holder_name' => :'String',
        :'account_type' => :'String',
        :'account_routing_number' => :'String',
        :'account_number' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'accountHolderName')
        self.account_holder_name = attributes[:'accountHolderName']
      end

      if attributes.has_key?(:'accountType')
        self.account_type = attributes[:'accountType']
      end

      if attributes.has_key?(:'accountRoutingNumber')
        self.account_routing_number = attributes[:'accountRoutingNumber']
      end

      if attributes.has_key?(:'accountNumber')
        self.account_number = attributes[:'accountNumber']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @account_holder_name.nil?
        invalid_properties.push('invalid value for "account_holder_name", account_holder_name cannot be nil.')
      end

      #if @account_holder_name !~ Regexp.new(/^[À-ÖØ-öø-ǿÀ-ÖØ-öø-ǿa-zA-Z0-9().\\-_#,;\/\\\\@$:&amp;!?%«»€₣«»€₣ ]{1,}$/)
        #invalid_properties.push('invalid value for "account_holder_name", must conform to the pattern /^[À-ÖØ-öø-ǿÀ-ÖØ-öø-ǿa-zA-Z0-9().\\-_#,;\/\\\\@$:&amp;!?%«»€₣«»€₣ ]{1,}$/.')
      #end

      if @account_type.nil?
        invalid_properties.push('invalid value for "account_type", account_type cannot be nil.')
      end

      if @account_routing_number.nil?
        invalid_properties.push('invalid value for "account_routing_number", account_routing_number cannot be nil.')
      end

      #if @account_routing_number !~ Regexp.new(/\\d{9}/)
        #invalid_properties.push('invalid value for "account_routing_number", must conform to the pattern /\\d{9}/.')
      #end

      if @account_number.nil?
        invalid_properties.push('invalid value for "account_number", account_number cannot be nil.')
      end

      #if @account_number !~ Regexp.new(/^\\d{5,17}$/)
        #invalid_properties.push('invalid value for "account_number", must conform to the pattern /^\\d{5,17}$/.')
      #end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @account_holder_name.nil?
      #return false if @account_holder_name !~ Regexp.new(/^[À-ÖØ-öø-ǿÀ-ÖØ-öø-ǿa-zA-Z0-9().\\-_#,;\/\\\\@$:&amp;!?%«»€₣«»€₣ ]{1,}$/)
      return false if @account_type.nil?
      return false if @account_routing_number.nil?
      #return false if @account_routing_number !~ Regexp.new(/\\d{9}/)
      return false if @account_number.nil?
      #return false if @account_number !~ Regexp.new(/^\\d{5,17}$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] account_holder_name Value to be assigned
    def account_holder_name=(account_holder_name)
      #if account_holder_name.nil?
        #fail ArgumentError, 'account_holder_name cannot be nil'
      #end

      #if account_holder_name !~ Regexp.new(/^[À-ÖØ-öø-ǿÀ-ÖØ-öø-ǿa-zA-Z0-9().\\-_#,;\/\\\\@$:&amp;!?%«»€₣«»€₣ ]{1,}$/)
        #fail ArgumentError, 'invalid value for "account_holder_name", must conform to the pattern /^[À-ÖØ-öø-ǿÀ-ÖØ-öø-ǿa-zA-Z0-9().\\-_#,;\/\\\\@$:&amp;!?%«»€₣«»€₣ ]{1,}$/.'
      #end

      @account_holder_name = account_holder_name
    end

    # Custom attribute writer method with validation
    # @param [Object] account_routing_number Value to be assigned
    def account_routing_number=(account_routing_number)
      #if account_routing_number.nil?
        #fail ArgumentError, 'account_routing_number cannot be nil'
      #end

      #if account_routing_number !~ Regexp.new(/\\d{9}/)
        #fail ArgumentError, 'invalid value for "account_routing_number", must conform to the pattern /\\d{9}/.'
      #end

      @account_routing_number = account_routing_number
    end

    # Custom attribute writer method with validation
    # @param [Object] account_number Value to be assigned
    def account_number=(account_number)
      #if account_number.nil?
        #fail ArgumentError, 'account_number cannot be nil'
      #end

      #if account_number !~ Regexp.new(/^\\d{5,17}$/)
        #fail ArgumentError, 'invalid value for "account_number", must conform to the pattern /^\\d{5,17}$/.'
      #end

      @account_number = account_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_holder_name == o.account_holder_name &&
          account_type == o.account_type &&
          account_routing_number == o.account_routing_number &&
          account_number == o.account_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [account_holder_name, account_type, account_routing_number, account_number].hash
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
