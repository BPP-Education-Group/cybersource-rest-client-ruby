=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'date'

module CyberSource
  # *NEW* Name of the payment processor. Example - \"wellsfargoach\"
  class ECheckConfigFeaturesAccountValidationServiceProcessors
    # *NEW* Determined in WF eTicket if account has opted into the Account Ownership Service.
    attr_accessor :avs_account_ownership_service

    # *NEW* Determined in WF eTicket if account has opted into the Account Status Service.
    attr_accessor :avs_account_status_service

    # *NEW* Taken from Addendum Agreement Column in boarding form.
    attr_accessor :avs_signed_agreement

    # *NEW*
    attr_accessor :avs_calculated_response_behavior

    # *NEW* Also known as the Additional ID. Taken from the boarding form.
    attr_accessor :avs_additional_id

    # *NEW*
    attr_accessor :enable_avs

    # *NEW* Also known as the AVS Gateway Entity ID.
    attr_accessor :avs_entity_id

    # *NEW*
    attr_accessor :avs_result_mode

    # *NEW* Applicable if the merchant wants to run AVS on token creation requests only.
    attr_accessor :enable_avs_token_creation

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'avs_account_ownership_service' => :'avsAccountOwnershipService',
        :'avs_account_status_service' => :'avsAccountStatusService',
        :'avs_signed_agreement' => :'avsSignedAgreement',
        :'avs_calculated_response_behavior' => :'avsCalculatedResponseBehavior',
        :'avs_additional_id' => :'avsAdditionalId',
        :'enable_avs' => :'enableAvs',
        :'avs_entity_id' => :'avsEntityId',
        :'avs_result_mode' => :'avsResultMode',
        :'enable_avs_token_creation' => :'enableAvsTokenCreation'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'avs_account_ownership_service' => :'avs_account_ownership_service',
        :'avs_account_status_service' => :'avs_account_status_service',
        :'avs_signed_agreement' => :'avs_signed_agreement',
        :'avs_calculated_response_behavior' => :'avs_calculated_response_behavior',
        :'avs_additional_id' => :'avs_additional_id',
        :'enable_avs' => :'enable_avs',
        :'avs_entity_id' => :'avs_entity_id',
        :'avs_result_mode' => :'avs_result_mode',
        :'enable_avs_token_creation' => :'enable_avs_token_creation'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'avs_account_ownership_service' => :'BOOLEAN',
        :'avs_account_status_service' => :'BOOLEAN',
        :'avs_signed_agreement' => :'BOOLEAN',
        :'avs_calculated_response_behavior' => :'Object',
        :'avs_additional_id' => :'String',
        :'enable_avs' => :'BOOLEAN',
        :'avs_entity_id' => :'String',
        :'avs_result_mode' => :'Object',
        :'enable_avs_token_creation' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'avsAccountOwnershipService')
        self.avs_account_ownership_service = attributes[:'avsAccountOwnershipService']
      end

      if attributes.has_key?(:'avsAccountStatusService')
        self.avs_account_status_service = attributes[:'avsAccountStatusService']
      end

      if attributes.has_key?(:'avsSignedAgreement')
        self.avs_signed_agreement = attributes[:'avsSignedAgreement']
      end

      if attributes.has_key?(:'avsCalculatedResponseBehavior')
        self.avs_calculated_response_behavior = attributes[:'avsCalculatedResponseBehavior']
      end

      if attributes.has_key?(:'avsAdditionalId')
        self.avs_additional_id = attributes[:'avsAdditionalId']
      end

      if attributes.has_key?(:'enableAvs')
        self.enable_avs = attributes[:'enableAvs']
      else
        self.enable_avs = true
      end

      if attributes.has_key?(:'avsEntityId')
        self.avs_entity_id = attributes[:'avsEntityId']
      end

      if attributes.has_key?(:'avsResultMode')
        self.avs_result_mode = attributes[:'avsResultMode']
      end

      if attributes.has_key?(:'enableAvsTokenCreation')
        self.enable_avs_token_creation = attributes[:'enableAvsTokenCreation']
      else
        self.enable_avs_token_creation = false
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
          avs_account_ownership_service == o.avs_account_ownership_service &&
          avs_account_status_service == o.avs_account_status_service &&
          avs_signed_agreement == o.avs_signed_agreement &&
          avs_calculated_response_behavior == o.avs_calculated_response_behavior &&
          avs_additional_id == o.avs_additional_id &&
          enable_avs == o.enable_avs &&
          avs_entity_id == o.avs_entity_id &&
          avs_result_mode == o.avs_result_mode &&
          enable_avs_token_creation == o.enable_avs_token_creation
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [avs_account_ownership_service, avs_account_status_service, avs_signed_agreement, avs_calculated_response_behavior, avs_additional_id, enable_avs, avs_entity_id, avs_result_mode, enable_avs_token_creation].hash
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
