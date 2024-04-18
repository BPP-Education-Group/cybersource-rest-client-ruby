=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'date'

module CyberSource
  # key information 
  class KmsV2KeysSymPost201ResponseKeyInformation
    # Merchant Id 
    attr_accessor :organization_id

    # Payworks MerchantId for given organizationId. 
    attr_accessor :external_organization_id

    # Reference number is a unique identifier provided by the client along with the organization Id. This is an optional field provided solely for the client's convenience. If client specifies value for this field in the request, it is expected to be available in the response. 
    attr_accessor :reference_number

    # Key Serial Number 
    attr_accessor :key_id

    # value of the key 
    attr_accessor :key

    # The status of the key.  Possible values:  - FAILED  - ACTIVE 
    attr_accessor :status

    # The expiration time in UTC. `Format: YYYY-MM-DDThh:mm:ssZ`  Example 2016-08-11T22:47:57Z equals August 11, 2016, at 22:47:57 (10:47:57 p.m.). The T separates the date and the time. The Z indicates UTC. 
    attr_accessor :expiration_date

    # message in case of failed key
    attr_accessor :message

    attr_accessor :error_information

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'organization_id' => :'organizationId',
        :'external_organization_id' => :'externalOrganizationId',
        :'reference_number' => :'referenceNumber',
        :'key_id' => :'keyId',
        :'key' => :'key',
        :'status' => :'status',
        :'expiration_date' => :'expirationDate',
        :'message' => :'message',
        :'error_information' => :'errorInformation'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'organization_id' => :'organization_id',
        :'external_organization_id' => :'external_organization_id',
        :'reference_number' => :'reference_number',
        :'key_id' => :'key_id',
        :'key' => :'key',
        :'status' => :'status',
        :'expiration_date' => :'expiration_date',
        :'message' => :'message',
        :'error_information' => :'error_information'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'organization_id' => :'String',
        :'external_organization_id' => :'String',
        :'reference_number' => :'String',
        :'key_id' => :'String',
        :'key' => :'String',
        :'status' => :'String',
        :'expiration_date' => :'String',
        :'message' => :'String',
        :'error_information' => :'KmsV2KeysSymPost201ResponseErrorInformation'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'organizationId')
        self.organization_id = attributes[:'organizationId']
      end

      if attributes.has_key?(:'externalOrganizationId')
        self.external_organization_id = attributes[:'externalOrganizationId']
      end

      if attributes.has_key?(:'referenceNumber')
        self.reference_number = attributes[:'referenceNumber']
      end

      if attributes.has_key?(:'keyId')
        self.key_id = attributes[:'keyId']
      end

      if attributes.has_key?(:'key')
        self.key = attributes[:'key']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'expirationDate')
        self.expiration_date = attributes[:'expirationDate']
      end

      if attributes.has_key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.has_key?(:'errorInformation')
        self.error_information = attributes[:'errorInformation']
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
    # @param [Object] external_organization_id Value to be assigned
    def external_organization_id=(external_organization_id)
      @external_organization_id = external_organization_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          organization_id == o.organization_id &&
          external_organization_id == o.external_organization_id &&
          reference_number == o.reference_number &&
          key_id == o.key_id &&
          key == o.key &&
          status == o.status &&
          expiration_date == o.expiration_date &&
          message == o.message &&
          error_information == o.error_information
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [organization_id, external_organization_id, reference_number, key_id, key, status, expiration_date, message, error_information].hash
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
