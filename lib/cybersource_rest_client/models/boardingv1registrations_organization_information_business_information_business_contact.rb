=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'date'

module CyberSource
  class Boardingv1registrationsOrganizationInformationBusinessInformationBusinessContact
    attr_accessor :first_name

    attr_accessor :middle_name

    attr_accessor :last_name

    attr_accessor :phone_number

    attr_accessor :email

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'first_name' => :'firstName',
        :'middle_name' => :'middleName',
        :'last_name' => :'lastName',
        :'phone_number' => :'phoneNumber',
        :'email' => :'email'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'first_name' => :'first_name',
        :'middle_name' => :'middle_name',
        :'last_name' => :'last_name',
        :'phone_number' => :'phone_number',
        :'email' => :'email'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'first_name' => :'String',
        :'middle_name' => :'String',
        :'last_name' => :'String',
        :'phone_number' => :'String',
        :'email' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'firstName')
        self.first_name = attributes[:'firstName']
      end

      if attributes.has_key?(:'middleName')
        self.middle_name = attributes[:'middleName']
      end

      if attributes.has_key?(:'lastName')
        self.last_name = attributes[:'lastName']
      end

      if attributes.has_key?(:'phoneNumber')
        self.phone_number = attributes[:'phoneNumber']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @first_name.nil?
        invalid_properties.push('invalid value for "first_name", first_name cannot be nil.')
      end

      #if @first_name !~ Regexp.new(/^[0-9a-zA-Z _\\-\\+\\.\\*\\\"\/'&\\,\\(\\)!$;:?@\\#¡-￿]+$/)
        #invalid_properties.push('invalid value for "first_name", must conform to the pattern /^[0-9a-zA-Z _\\-\\+\\.\\*\\\"\/'&\\,\\(\\)!$;:?@\\#¡-￿]+$/.')
      #end

      #if !@middle_name.nil? && @middle_name !~ Regexp.new(/^[0-9a-zA-Z _\\-\\+\\.\\*\\\"\/'&\\,\\(\\)!$;:?@\\#¡-￿]+$/)
        #invalid_properties.push('invalid value for "middle_name", must conform to the pattern /^[0-9a-zA-Z _\\-\\+\\.\\*\\\"\/'&\\,\\(\\)!$;:?@\\#¡-￿]+$/.')
      #end

      if @last_name.nil?
        invalid_properties.push('invalid value for "last_name", last_name cannot be nil.')
      end

      #if @last_name !~ Regexp.new(/^[0-9a-zA-Z _\\-\\+\\.\\*\\\"\/'&\\,\\(\\)!$;:?@\\#¡-￿]+$/)
        #invalid_properties.push('invalid value for "last_name", must conform to the pattern /^[0-9a-zA-Z _\\-\\+\\.\\*\\\"\/'&\\,\\(\\)!$;:?@\\#¡-￿]+$/.')
      #end

      if @phone_number.nil?
        invalid_properties.push('invalid value for "phone_number", phone_number cannot be nil.')
      end

      #if @phone_number !~ Regexp.new(/^[0-9a-zA-Z\\\\+\\\\-]+$/)
        #invalid_properties.push('invalid value for "phone_number", must conform to the pattern /^[0-9a-zA-Z\\\\+\\\\-]+$/.')
      #end

      if @email.nil?
        invalid_properties.push('invalid value for "email", email cannot be nil.')
      end

      #if @email !~ Regexp.new(/^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,50}|[0-9]{1,3})(\\]?)$/)
        #invalid_properties.push('invalid value for "email", must conform to the pattern /^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,50}|[0-9]{1,3})(\\]?)$/.')
      #end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @first_name.nil?
      #return false if @first_name !~ Regexp.new(/^[0-9a-zA-Z _\\-\\+\\.\\*\\\"\/'&\\,\\(\\)!$;:?@\\#¡-￿]+$/)
      #return false if !@middle_name.nil? && @middle_name !~ Regexp.new(/^[0-9a-zA-Z _\\-\\+\\.\\*\\\"\/'&\\,\\(\\)!$;:?@\\#¡-￿]+$/)
      return false if @last_name.nil?
      #return false if @last_name !~ Regexp.new(/^[0-9a-zA-Z _\\-\\+\\.\\*\\\"\/'&\\,\\(\\)!$;:?@\\#¡-￿]+$/)
      return false if @phone_number.nil?
      #return false if @phone_number !~ Regexp.new(/^[0-9a-zA-Z\\\\+\\\\-]+$/)
      return false if @email.nil?
      #return false if @email !~ Regexp.new(/^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,50}|[0-9]{1,3})(\\]?)$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)
      #if first_name.nil?
        #fail ArgumentError, 'first_name cannot be nil'
      #end

      #if first_name !~ Regexp.new(/^[0-9a-zA-Z _\\-\\+\\.\\*\\\"\/'&\\,\\(\\)!$;:?@\\#¡-￿]+$/)
        #fail ArgumentError, 'invalid value for "first_name", must conform to the pattern /^[0-9a-zA-Z _\\-\\+\\.\\*\\\"\/'&\\,\\(\\)!$;:?@\\#¡-￿]+$/.'
      #end

      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] middle_name Value to be assigned
    def middle_name=(middle_name)
      #if !middle_name.nil? && middle_name !~ Regexp.new(/^[0-9a-zA-Z _\\-\\+\\.\\*\\\"\/'&\\,\\(\\)!$;:?@\\#¡-￿]+$/)
        #fail ArgumentError, 'invalid value for "middle_name", must conform to the pattern /^[0-9a-zA-Z _\\-\\+\\.\\*\\\"\/'&\\,\\(\\)!$;:?@\\#¡-￿]+$/.'
      #end

      @middle_name = middle_name
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)
      #if last_name.nil?
        #fail ArgumentError, 'last_name cannot be nil'
      #end

      #if last_name !~ Regexp.new(/^[0-9a-zA-Z _\\-\\+\\.\\*\\\"\/'&\\,\\(\\)!$;:?@\\#¡-￿]+$/)
        #fail ArgumentError, 'invalid value for "last_name", must conform to the pattern /^[0-9a-zA-Z _\\-\\+\\.\\*\\\"\/'&\\,\\(\\)!$;:?@\\#¡-￿]+$/.'
      #end

      @last_name = last_name
    end

    # Custom attribute writer method with validation
    # @param [Object] phone_number Value to be assigned
    def phone_number=(phone_number)
      #if phone_number.nil?
        #fail ArgumentError, 'phone_number cannot be nil'
      #end

      #if phone_number !~ Regexp.new(/^[0-9a-zA-Z\\\\+\\\\-]+$/)
        #fail ArgumentError, 'invalid value for "phone_number", must conform to the pattern /^[0-9a-zA-Z\\\\+\\\\-]+$/.'
      #end

      @phone_number = phone_number
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      #if email.nil?
        #fail ArgumentError, 'email cannot be nil'
      #end

      #if email !~ Regexp.new(/^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,50}|[0-9]{1,3})(\\]?)$/)
        #fail ArgumentError, 'invalid value for "email", must conform to the pattern /^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,50}|[0-9]{1,3})(\\]?)$/.'
      #end

      @email = email
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          first_name == o.first_name &&
          middle_name == o.middle_name &&
          last_name == o.last_name &&
          phone_number == o.phone_number &&
          email == o.email
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [first_name, middle_name, last_name, phone_number, email].hash
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
