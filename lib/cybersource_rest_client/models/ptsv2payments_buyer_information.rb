=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'date'

module CyberSource
  class Ptsv2paymentsBuyerInformation
    # Your identifier for the customer.  When a subscription or customer profile is being created, the maximum length for this field for most processors is 30. Otherwise, the maximum length is 100.  #### Comercio Latino For recurring payments in Mexico, the value is the customer's contract number. Note Before you request the authorization, you must inform the issuer of the customer contract numbers that will be used for recurring transactions.  #### Worldpay VAP For a follow-on credit with Worldpay VAP, CyberSource checks the following locations, in the order given, for a customer account ID value and uses the first value it finds: 1. `customer_account_id` value in the follow-on credit request 2. Customer account ID value that was used for the capture that is being credited 3. Customer account ID value that was used for the original authorization If a customer account ID value cannot be found in any of these locations, then no value is used.  For processor-specific information, see the `customer_account_id` field description in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html) 
    attr_accessor :merchant_customer_id

    # Recipient's date of birth. **Format**: `YYYYMMDD`.  This field is a `pass-through`, which means that CyberSource ensures that the value is eight numeric characters but otherwise does not verify the value or modify it in any way before sending it to the processor. If the field is not required for the transaction, CyberSource does not forward it to the processor.  For more details, see `recipient_date_of_birth` field description in the [Credit Card Services Using the SCMP API Guide.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/) 
    attr_accessor :date_of_birth

    # Customer's government-assigned tax identification number.  #### Tax Calculation Optional for international and value added taxes only. Not applicable to U.S. and Canadian taxes.  For processor-specific information, see the purchaser_vat_registration_number field in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html) 
    attr_accessor :vat_registration_number

    # Company's tax identifier. This is only used for eCheck service.  ** TeleCheck ** Contact your TeleCheck representative to find out whether this field is required or optional.  ** All Other Processors ** Not used. 
    attr_accessor :company_tax_id

    attr_accessor :personal_identification

    # The merchant's password that CyberSource hashes and stores as a hashed password.  For details about this field, see the `customer_password` field description in _Decision Manager Using the SCMP API Developer Guide_ on the [CyberSource Business Center.](https://ebc2.cybersource.com/ebc2/) Click **Decision Manager** > **Documentation** > **Guides** > _Decision Manager Using the SCMP API Developer Guide_ (PDF link). 
    attr_accessor :hashed_password

    # Customer's gender. Possible values are F (female), M (male),O (other).
    attr_accessor :gender

    # language setting of the user
    attr_accessor :language

    # Note to the recipient of the funds in this transaction
    attr_accessor :note_to_seller

    # Cardholder's mobile phone number. **Important** Required for Visa Secure transactions in Brazil. Do not use this request field for any other types of transactions. 
    attr_accessor :mobile_phone

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'merchant_customer_id' => :'merchantCustomerId',
        :'date_of_birth' => :'dateOfBirth',
        :'vat_registration_number' => :'vatRegistrationNumber',
        :'company_tax_id' => :'companyTaxId',
        :'personal_identification' => :'personalIdentification',
        :'hashed_password' => :'hashedPassword',
        :'gender' => :'gender',
        :'language' => :'language',
        :'note_to_seller' => :'noteToSeller',
        :'mobile_phone' => :'mobilePhone'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'merchant_customer_id' => :'merchant_customer_id',
        :'date_of_birth' => :'date_of_birth',
        :'vat_registration_number' => :'vat_registration_number',
        :'company_tax_id' => :'company_tax_id',
        :'personal_identification' => :'personal_identification',
        :'hashed_password' => :'hashed_password',
        :'gender' => :'gender',
        :'language' => :'language',
        :'note_to_seller' => :'note_to_seller',
        :'mobile_phone' => :'mobile_phone'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'merchant_customer_id' => :'String',
        :'date_of_birth' => :'String',
        :'vat_registration_number' => :'String',
        :'company_tax_id' => :'String',
        :'personal_identification' => :'Array<Ptsv2paymentsBuyerInformationPersonalIdentification>',
        :'hashed_password' => :'String',
        :'gender' => :'String',
        :'language' => :'String',
        :'note_to_seller' => :'String',
        :'mobile_phone' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'merchantCustomerId')
        self.merchant_customer_id = attributes[:'merchantCustomerId']
      end

      if attributes.has_key?(:'dateOfBirth')
        self.date_of_birth = attributes[:'dateOfBirth']
      end

      if attributes.has_key?(:'vatRegistrationNumber')
        self.vat_registration_number = attributes[:'vatRegistrationNumber']
      end

      if attributes.has_key?(:'companyTaxId')
        self.company_tax_id = attributes[:'companyTaxId']
      end

      if attributes.has_key?(:'personalIdentification')
        if (value = attributes[:'personalIdentification']).is_a?(Array)
          self.personal_identification = value
        end
      end

      if attributes.has_key?(:'hashedPassword')
        self.hashed_password = attributes[:'hashedPassword']
      end

      if attributes.has_key?(:'gender')
        self.gender = attributes[:'gender']
      end

      if attributes.has_key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.has_key?(:'noteToSeller')
        self.note_to_seller = attributes[:'noteToSeller']
      end

      if attributes.has_key?(:'mobilePhone')
        self.mobile_phone = attributes[:'mobilePhone']
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
    # @param [Object] merchant_customer_id Value to be assigned
    def merchant_customer_id=(merchant_customer_id)
      @merchant_customer_id = merchant_customer_id
    end

    # Custom attribute writer method with validation
    # @param [Object] date_of_birth Value to be assigned
    def date_of_birth=(date_of_birth)
      @date_of_birth = date_of_birth
    end

    # Custom attribute writer method with validation
    # @param [Object] vat_registration_number Value to be assigned
    def vat_registration_number=(vat_registration_number)
      @vat_registration_number = vat_registration_number
    end

    # Custom attribute writer method with validation
    # @param [Object] company_tax_id Value to be assigned
    def company_tax_id=(company_tax_id)
      @company_tax_id = company_tax_id
    end

    # Custom attribute writer method with validation
    # @param [Object] hashed_password Value to be assigned
    def hashed_password=(hashed_password)
      @hashed_password = hashed_password
    end

    # Custom attribute writer method with validation
    # @param [Object] gender Value to be assigned
    def gender=(gender)
      @gender = gender
    end

    # Custom attribute writer method with validation
    # @param [Object] language Value to be assigned
    def language=(language)
      @language = language
    end

    # Custom attribute writer method with validation
    # @param [Object] note_to_seller Value to be assigned
    def note_to_seller=(note_to_seller)
      @note_to_seller = note_to_seller
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          merchant_customer_id == o.merchant_customer_id &&
          date_of_birth == o.date_of_birth &&
          vat_registration_number == o.vat_registration_number &&
          company_tax_id == o.company_tax_id &&
          personal_identification == o.personal_identification &&
          hashed_password == o.hashed_password &&
          gender == o.gender &&
          language == o.language &&
          note_to_seller == o.note_to_seller &&
          mobile_phone == o.mobile_phone
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [merchant_customer_id, date_of_birth, vat_registration_number, company_tax_id, personal_identification, hashed_password, gender, language, note_to_seller, mobile_phone].hash
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
