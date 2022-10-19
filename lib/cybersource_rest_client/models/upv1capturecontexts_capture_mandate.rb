=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Upv1capturecontextsCaptureMandate
    # This field defines the type of Billing Address information captured through the Manual card Entry UX. FULL, PARTIAL
    attr_accessor :billing_type

    # Capture email contact information in the manual card acceptance screens.
    attr_accessor :request_email

    # Capture email contact information in the manual card acceptance screens.
    attr_accessor :request_phone

    # Capture email contact information in the manual card acceptance screens.
    attr_accessor :request_shipping

    # List of countries available to ship to. Use the two- character ISO Standard Country Codes.
    attr_accessor :ship_to_countries

    # Show the list of accepted payment icons in the payment button
    attr_accessor :show_accepted_network_icons

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'billing_type' => :'billingType',
        :'request_email' => :'requestEmail',
        :'request_phone' => :'requestPhone',
        :'request_shipping' => :'requestShipping',
        :'ship_to_countries' => :'shipToCountries',
        :'show_accepted_network_icons' => :'showAcceptedNetworkIcons'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'billing_type' => :'String',
        :'request_email' => :'BOOLEAN',
        :'request_phone' => :'BOOLEAN',
        :'request_shipping' => :'BOOLEAN',
        :'ship_to_countries' => :'Array<String>',
        :'show_accepted_network_icons' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'billingType')
        self.billing_type = attributes[:'billingType']
      end

      if attributes.has_key?(:'requestEmail')
        self.request_email = attributes[:'requestEmail']
      end

      if attributes.has_key?(:'requestPhone')
        self.request_phone = attributes[:'requestPhone']
      end

      if attributes.has_key?(:'requestShipping')
        self.request_shipping = attributes[:'requestShipping']
      end

      if attributes.has_key?(:'shipToCountries')
        if (value = attributes[:'shipToCountries']).is_a?(Array)
          self.ship_to_countries = value
        end
      end

      if attributes.has_key?(:'showAcceptedNetworkIcons')
        self.show_accepted_network_icons = attributes[:'showAcceptedNetworkIcons']
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
    # @param [Object] billing_type Value to be assigned
    def billing_type=(billing_type)
      @billing_type = billing_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          billing_type == o.billing_type &&
          request_email == o.request_email &&
          request_phone == o.request_phone &&
          request_shipping == o.request_shipping &&
          ship_to_countries == o.ship_to_countries &&
          show_accepted_network_icons == o.show_accepted_network_icons
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [billing_type, request_email, request_phone, request_shipping, ship_to_countries, show_accepted_network_icons].hash
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
