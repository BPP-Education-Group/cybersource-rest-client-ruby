=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv2paymentreferencesOrderInformationShipTo
    # Customer's primary email address, including the full domain name. 
    attr_accessor :email

    # The title of the person receiving the product.
    attr_accessor :title

    # First name of the recipient.  #### Litle Maximum length: 25  #### All other processors Maximum length: 60  Optional field. 
    attr_accessor :first_name

    # Middle name of the recipient.  #### Litle Maximum length: 25  #### All other processors Maximum length: 60  Optional field. 
    attr_accessor :middle_name

    # Last name of the recipient.  #### Litle Maximum length: 25  #### All other processors Maximum length: 60  Optional field. 
    attr_accessor :last_name

    # Name of the customer's company.  For processor-specific information, see the company_name field in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html) 
    attr_accessor :company

    # First line of the shipping address.  Required field for authorization if any shipping address information is included in the request; otherwise, optional.  #### Tax Calculation Optional field for U.S. and Canadian taxes. Not applicable to international and value added taxes. Billing address objects will be used to determine the cardholder's location when shipTo objects are not present. 
    attr_accessor :address1

    # Second line of the shipping address.  Optional field.  #### Tax Calculation Optional field for U.S. and Canadian taxes. Not applicable to international and value added taxes. Billing address objects will be used to determine the cardholder's location when shipTo objects are not present. 
    attr_accessor :address2

    # Neighborhood, community, or region within a city or municipality.
    attr_accessor :district

    # City of the shipping address.  Required field for authorization if any shipping address information is included in the request and shipping to the U.S. or Canada; otherwise, optional.  #### Tax Calculation Optional field for U.S. and Canadian taxes. Not applicable to international and value added taxes. Billing address objects will be used to determine the cardholder's location when shipTo objects are not present. 
    attr_accessor :locality

    # State or province of the shipping address. Use the [State, Province, and Territory Codes for the United States and Canada](https://developer.cybersource.com/library/documentation/sbc/quickref/states_and_provinces.pdf) (maximum length: 2)   Required field for authorization if any shipping address information is included in the request and shipping to the U.S. or Canada; otherwise, optional.  #### Tax Calculation Optional field for U.S. and Canadian taxes. Not applicable to international and value added taxes. Billing address objects will be used to determine the cardholder's location when shipTo objects are not present. 
    attr_accessor :administrative_area

    # Postal code for the shipping address. The postal code must consist of 5 to 9 digits.  Required field for authorization if any shipping address information is included in the request and shipping to the U.S. or Canada; otherwise, optional.  When the billing country is the U.S., the 9-digit postal code must follow this format: [5 digits][dash][4 digits]  Example 12345-6789  When the billing country is Canada, the 6-digit postal code must follow this format: [alpha][numeric][alpha][space][numeric][alpha][numeric]  Example A1B 2C3  #### American Express Direct Before sending the postal code to the processor, all nonalphanumeric characters are removed and, if the remaining value is longer than nine characters, the value is truncated starting from the right side. #### Tax Calculation Optional field for U.S. and Canadian taxes. Not applicable to international and value added taxes. Billing address objects will be used to determine the cardholder's location when shipTo objects are not present. 
    attr_accessor :postal_code

    # Country of the shipping address. Use the two-character [ISO Standard Country Codes.](http://apps.cybersource.com/library/documentation/sbc/quickref/countries_alpha_list.pdf)  Required field for authorization if any shipping address information is included in the request; otherwise, optional.  #### Tax Calculation Optional field for U.S., Canadian, international tax, and value added taxes. Billing address objects will be used to determine the cardholder's location when shipTo objects are not present. 
    attr_accessor :country

    # Building number in the street address. For example, the building number is 187 in the following address:  Rua da Quitanda 187 
    attr_accessor :building_number

    # Phone number associated with the shipping address.
    attr_accessor :phone_number

    # Indicates whether customers are permitted to edit the shipping address in their PayPal account. Possible values: - true: Customer cannot edit the shipping address. - false (default): Customer can edit the shipping address. 
    attr_accessor :immutable

    # Indicates whether the shipping address is displayed to the customer in their PayPal account. Possible values: - true: Shipping address is not displayed. - false (default): Shipping address is displayed. For example, for digital downloads and services in which a shipping address is not required, set the value to true. 
    attr_accessor :not_applicable

    # U.S. county if available.
    attr_accessor :county

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'email' => :'email',
        :'title' => :'title',
        :'first_name' => :'firstName',
        :'middle_name' => :'middleName',
        :'last_name' => :'lastName',
        :'company' => :'company',
        :'address1' => :'address1',
        :'address2' => :'address2',
        :'district' => :'district',
        :'locality' => :'locality',
        :'administrative_area' => :'administrativeArea',
        :'postal_code' => :'postalCode',
        :'country' => :'country',
        :'building_number' => :'buildingNumber',
        :'phone_number' => :'phoneNumber',
        :'immutable' => :'immutable',
        :'not_applicable' => :'notApplicable',
        :'county' => :'county'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'email' => :'email',
        :'title' => :'title',
        :'first_name' => :'first_name',
        :'middle_name' => :'middle_name',
        :'last_name' => :'last_name',
        :'company' => :'company',
        :'address1' => :'address1',
        :'address2' => :'address2',
        :'district' => :'district',
        :'locality' => :'locality',
        :'administrative_area' => :'administrative_area',
        :'postal_code' => :'postal_code',
        :'country' => :'country',
        :'building_number' => :'building_number',
        :'phone_number' => :'phone_number',
        :'immutable' => :'immutable',
        :'not_applicable' => :'not_applicable',
        :'county' => :'county'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'email' => :'String',
        :'title' => :'String',
        :'first_name' => :'String',
        :'middle_name' => :'String',
        :'last_name' => :'String',
        :'company' => :'String',
        :'address1' => :'String',
        :'address2' => :'String',
        :'district' => :'String',
        :'locality' => :'String',
        :'administrative_area' => :'String',
        :'postal_code' => :'String',
        :'country' => :'String',
        :'building_number' => :'String',
        :'phone_number' => :'String',
        :'immutable' => :'String',
        :'not_applicable' => :'String',
        :'county' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.has_key?(:'firstName')
        self.first_name = attributes[:'firstName']
      end

      if attributes.has_key?(:'middleName')
        self.middle_name = attributes[:'middleName']
      end

      if attributes.has_key?(:'lastName')
        self.last_name = attributes[:'lastName']
      end

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'address1')
        self.address1 = attributes[:'address1']
      end

      if attributes.has_key?(:'address2')
        self.address2 = attributes[:'address2']
      end

      if attributes.has_key?(:'district')
        self.district = attributes[:'district']
      end

      if attributes.has_key?(:'locality')
        self.locality = attributes[:'locality']
      end

      if attributes.has_key?(:'administrativeArea')
        self.administrative_area = attributes[:'administrativeArea']
      end

      if attributes.has_key?(:'postalCode')
        self.postal_code = attributes[:'postalCode']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.has_key?(:'buildingNumber')
        self.building_number = attributes[:'buildingNumber']
      end

      if attributes.has_key?(:'phoneNumber')
        self.phone_number = attributes[:'phoneNumber']
      end

      if attributes.has_key?(:'immutable')
        self.immutable = attributes[:'immutable']
      end

      if attributes.has_key?(:'notApplicable')
        self.not_applicable = attributes[:'notApplicable']
      end

      if attributes.has_key?(:'county')
        self.county = attributes[:'county']
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
    # @param [Object] email Value to be assigned
    def email=(email)
      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] title Value to be assigned
    def title=(title)
      @title = title
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)
      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] middle_name Value to be assigned
    def middle_name=(middle_name)
      @middle_name = middle_name
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)
      @last_name = last_name
    end

    # Custom attribute writer method with validation
    # @param [Object] company Value to be assigned
    def company=(company)
      @company = company
    end

    # Custom attribute writer method with validation
    # @param [Object] address1 Value to be assigned
    def address1=(address1)
      @address1 = address1
    end

    # Custom attribute writer method with validation
    # @param [Object] address2 Value to be assigned
    def address2=(address2)
      @address2 = address2
    end

    # Custom attribute writer method with validation
    # @param [Object] district Value to be assigned
    def district=(district)
      @district = district
    end

    # Custom attribute writer method with validation
    # @param [Object] locality Value to be assigned
    def locality=(locality)
      @locality = locality
    end

    # Custom attribute writer method with validation
    # @param [Object] administrative_area Value to be assigned
    def administrative_area=(administrative_area)
      @administrative_area = administrative_area
    end

    # Custom attribute writer method with validation
    # @param [Object] postal_code Value to be assigned
    def postal_code=(postal_code)
      @postal_code = postal_code
    end

    # Custom attribute writer method with validation
    # @param [Object] country Value to be assigned
    def country=(country)
      @country = country
    end

    # Custom attribute writer method with validation
    # @param [Object] building_number Value to be assigned
    def building_number=(building_number)
      @building_number = building_number
    end

    # Custom attribute writer method with validation
    # @param [Object] phone_number Value to be assigned
    def phone_number=(phone_number)
      @phone_number = phone_number
    end

    # Custom attribute writer method with validation
    # @param [Object] immutable Value to be assigned
    def immutable=(immutable)
      @immutable = immutable
    end

    # Custom attribute writer method with validation
    # @param [Object] not_applicable Value to be assigned
    def not_applicable=(not_applicable)
      @not_applicable = not_applicable
    end

    # Custom attribute writer method with validation
    # @param [Object] county Value to be assigned
    def county=(county)
      @county = county
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          email == o.email &&
          title == o.title &&
          first_name == o.first_name &&
          middle_name == o.middle_name &&
          last_name == o.last_name &&
          company == o.company &&
          address1 == o.address1 &&
          address2 == o.address2 &&
          district == o.district &&
          locality == o.locality &&
          administrative_area == o.administrative_area &&
          postal_code == o.postal_code &&
          country == o.country &&
          building_number == o.building_number &&
          phone_number == o.phone_number &&
          immutable == o.immutable &&
          not_applicable == o.not_applicable &&
          county == o.county
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [email, title, first_name, middle_name, last_name, company, address1, address2, district, locality, administrative_area, postal_code, country, building_number, phone_number, immutable, not_applicable, county].hash
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
