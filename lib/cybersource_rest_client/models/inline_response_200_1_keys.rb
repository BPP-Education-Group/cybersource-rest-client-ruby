=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'date'

module CyberSource
  # KeyResponseEntry
  class InlineResponse2001Keys
    # Merchant Id
    attr_accessor :organization_id

    # Merchant Name
    attr_accessor :merchant_name

    # Key Id
    attr_accessor :key_id

    # Key Type
    attr_accessor :key_type

    # Status can be active/inactive
    attr_accessor :status

    # Expiry Date. example - 2028-07-15 22:11:56 UTC
    attr_accessor :expiration_date

    # Date Addded. example - 2018-04-25 22:11:56 UTC
    attr_accessor :date_added

    # Added By
    attr_accessor :added_by

    # Modified Date.
    attr_accessor :date_modified

    # Modified By
    attr_accessor :modified_by

    # Version
    attr_accessor :version

    # Serial Number
    attr_accessor :serial_number

    # Issuer Name
    attr_accessor :issuer_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'organization_id' => :'organizationId',
        :'merchant_name' => :'merchantName',
        :'key_id' => :'keyId',
        :'key_type' => :'keyType',
        :'status' => :'status',
        :'expiration_date' => :'expirationDate',
        :'date_added' => :'dateAdded',
        :'added_by' => :'addedBy',
        :'date_modified' => :'dateModified',
        :'modified_by' => :'modifiedBy',
        :'version' => :'version',
        :'serial_number' => :'serialNumber',
        :'issuer_name' => :'issuerName'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'organization_id' => :'organization_id',
        :'merchant_name' => :'merchant_name',
        :'key_id' => :'key_id',
        :'key_type' => :'key_type',
        :'status' => :'status',
        :'expiration_date' => :'expiration_date',
        :'date_added' => :'date_added',
        :'added_by' => :'added_by',
        :'date_modified' => :'date_modified',
        :'modified_by' => :'modified_by',
        :'version' => :'version',
        :'serial_number' => :'serial_number',
        :'issuer_name' => :'issuer_name'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'organization_id' => :'String',
        :'merchant_name' => :'String',
        :'key_id' => :'String',
        :'key_type' => :'String',
        :'status' => :'String',
        :'expiration_date' => :'Date',
        :'date_added' => :'Date',
        :'added_by' => :'String',
        :'date_modified' => :'Date',
        :'modified_by' => :'String',
        :'version' => :'String',
        :'serial_number' => :'String',
        :'issuer_name' => :'String'
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

      if attributes.has_key?(:'merchantName')
        self.merchant_name = attributes[:'merchantName']
      end

      if attributes.has_key?(:'keyId')
        self.key_id = attributes[:'keyId']
      end

      if attributes.has_key?(:'keyType')
        self.key_type = attributes[:'keyType']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'expirationDate')
        self.expiration_date = attributes[:'expirationDate']
      end

      if attributes.has_key?(:'dateAdded')
        self.date_added = attributes[:'dateAdded']
      end

      if attributes.has_key?(:'addedBy')
        self.added_by = attributes[:'addedBy']
      end

      if attributes.has_key?(:'dateModified')
        self.date_modified = attributes[:'dateModified']
      end

      if attributes.has_key?(:'modifiedBy')
        self.modified_by = attributes[:'modifiedBy']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.has_key?(:'serialNumber')
        self.serial_number = attributes[:'serialNumber']
      end

      if attributes.has_key?(:'issuerName')
        self.issuer_name = attributes[:'issuerName']
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
          organization_id == o.organization_id &&
          merchant_name == o.merchant_name &&
          key_id == o.key_id &&
          key_type == o.key_type &&
          status == o.status &&
          expiration_date == o.expiration_date &&
          date_added == o.date_added &&
          added_by == o.added_by &&
          date_modified == o.date_modified &&
          modified_by == o.modified_by &&
          version == o.version &&
          serial_number == o.serial_number &&
          issuer_name == o.issuer_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [organization_id, merchant_name, key_id, key_type, status, expiration_date, date_added, added_by, date_modified, modified_by, version, serial_number, issuer_name].hash
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
