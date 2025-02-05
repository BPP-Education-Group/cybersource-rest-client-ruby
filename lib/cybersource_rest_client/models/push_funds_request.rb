=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'date'

module CyberSource
  class PushFundsRequest
    attr_accessor :aggregator_information

    attr_accessor :client_reference_information

    attr_accessor :order_information

    attr_accessor :processing_information

    attr_accessor :recipient_information

    attr_accessor :sender_information

    attr_accessor :merchant_information

    attr_accessor :point_of_service_information

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'aggregator_information' => :'aggregatorInformation',
        :'client_reference_information' => :'clientReferenceInformation',
        :'order_information' => :'orderInformation',
        :'processing_information' => :'processingInformation',
        :'recipient_information' => :'recipientInformation',
        :'sender_information' => :'senderInformation',
        :'merchant_information' => :'merchantInformation',
        :'point_of_service_information' => :'pointOfServiceInformation'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'aggregator_information' => :'aggregator_information',
        :'client_reference_information' => :'client_reference_information',
        :'order_information' => :'order_information',
        :'processing_information' => :'processing_information',
        :'recipient_information' => :'recipient_information',
        :'sender_information' => :'sender_information',
        :'merchant_information' => :'merchant_information',
        :'point_of_service_information' => :'point_of_service_information'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'aggregator_information' => :'Ptsv2payoutsAggregatorInformation',
        :'client_reference_information' => :'Ptsv1pushfundstransferClientReferenceInformation',
        :'order_information' => :'Ptsv1pushfundstransferOrderInformation',
        :'processing_information' => :'Ptsv1pushfundstransferProcessingInformation',
        :'recipient_information' => :'Ptsv1pushfundstransferRecipientInformation',
        :'sender_information' => :'Ptsv1pushfundstransferSenderInformation',
        :'merchant_information' => :'Ptsv1pushfundstransferMerchantInformation',
        :'point_of_service_information' => :'Ptsv1pushfundstransferPointOfServiceInformation'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'aggregatorInformation')
        self.aggregator_information = attributes[:'aggregatorInformation']
      end

      if attributes.has_key?(:'clientReferenceInformation')
        self.client_reference_information = attributes[:'clientReferenceInformation']
      end

      if attributes.has_key?(:'orderInformation')
        self.order_information = attributes[:'orderInformation']
      end

      if attributes.has_key?(:'processingInformation')
        self.processing_information = attributes[:'processingInformation']
      end

      if attributes.has_key?(:'recipientInformation')
        self.recipient_information = attributes[:'recipientInformation']
      end

      if attributes.has_key?(:'senderInformation')
        self.sender_information = attributes[:'senderInformation']
      end

      if attributes.has_key?(:'merchantInformation')
        self.merchant_information = attributes[:'merchantInformation']
      end

      if attributes.has_key?(:'pointOfServiceInformation')
        self.point_of_service_information = attributes[:'pointOfServiceInformation']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @order_information.nil?
        invalid_properties.push('invalid value for "order_information", order_information cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @order_information.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          aggregator_information == o.aggregator_information &&
          client_reference_information == o.client_reference_information &&
          order_information == o.order_information &&
          processing_information == o.processing_information &&
          recipient_information == o.recipient_information &&
          sender_information == o.sender_information &&
          merchant_information == o.merchant_information &&
          point_of_service_information == o.point_of_service_information
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [aggregator_information, client_reference_information, order_information, processing_information, recipient_information, sender_information, merchant_information, point_of_service_information].hash
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
