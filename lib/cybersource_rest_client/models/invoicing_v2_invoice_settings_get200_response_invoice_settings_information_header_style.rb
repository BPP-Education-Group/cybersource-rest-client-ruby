=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'date'

module CyberSource
  class InvoicingV2InvoiceSettingsGet200ResponseInvoiceSettingsInformationHeaderStyle
    # The invoice font color. The format is a valid hexadecimal code prefixed with `#`, such as `#000000` for black.
    attr_accessor :font_color

    # The invoice background color. The format is a valid hexadecimal code prefixed with `#`, such as `#ffffff` for white.
    attr_accessor :background_color

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'font_color' => :'fontColor',
        :'background_color' => :'backgroundColor'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'font_color' => :'font_color',
        :'background_color' => :'background_color'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'font_color' => :'String',
        :'background_color' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'fontColor')
        self.font_color = attributes[:'fontColor']
      end

      if attributes.has_key?(:'backgroundColor')
        self.background_color = attributes[:'backgroundColor']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      #if !@font_color.nil? && @font_color !~ Regexp.new(/^#(?:[0-9a-fA-F]{3}){1,2}$/)
        #invalid_properties.push('invalid value for "font_color", must conform to the pattern /^#(?:[0-9a-fA-F]{3}){1,2}$/.')
      #end

      #if !@background_color.nil? && @background_color !~ Regexp.new(/^#(?:[0-9a-fA-F]{3}){1,2}$/)
        #invalid_properties.push('invalid value for "background_color", must conform to the pattern /^#(?:[0-9a-fA-F]{3}){1,2}$/.')
      #end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      #return false if !@font_color.nil? && @font_color !~ Regexp.new(/^#(?:[0-9a-fA-F]{3}){1,2}$/)
      #return false if !@background_color.nil? && @background_color !~ Regexp.new(/^#(?:[0-9a-fA-F]{3}){1,2}$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] font_color Value to be assigned
    def font_color=(font_color)
      #if !font_color.nil? && font_color !~ Regexp.new(/^#(?:[0-9a-fA-F]{3}){1,2}$/)
        #fail ArgumentError, 'invalid value for "font_color", must conform to the pattern /^#(?:[0-9a-fA-F]{3}){1,2}$/.'
      #end

      @font_color = font_color
    end

    # Custom attribute writer method with validation
    # @param [Object] background_color Value to be assigned
    def background_color=(background_color)
      #if !background_color.nil? && background_color !~ Regexp.new(/^#(?:[0-9a-fA-F]{3}){1,2}$/)
        #fail ArgumentError, 'invalid value for "background_color", must conform to the pattern /^#(?:[0-9a-fA-F]{3}){1,2}$/.'
      #end

      @background_color = background_color
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          font_color == o.font_color &&
          background_color == o.background_color
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [font_color, background_color].hash
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
