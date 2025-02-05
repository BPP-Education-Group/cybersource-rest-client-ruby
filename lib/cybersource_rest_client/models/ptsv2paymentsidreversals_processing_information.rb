=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'date'

module CyberSource
  class Ptsv2paymentsidreversalsProcessingInformation
    # Type of digital payment solution for the transaction. Possible Values:   - `visacheckout`: Visa Checkout. This value is required for Visa Checkout transactions. For details, see `payment_solution` field description in [Visa Checkout Using the REST API.](https://developer.cybersource.com/content/dam/docs/cybs/en-us/apifields/reference/all/rest/api-fields.pdf)  - `001`: Apple Pay.  - `004`: Cybersource In-App Solution.  - `005`: Masterpass. This value is required for Masterpass transactions on OmniPay Direct.   - `006`: Android Pay.  - `007`: Chase Pay.  - `008`: Samsung Pay.  - `012`: Google Pay.  - `013`: Cybersource P2PE Decryption  - `014`: Mastercard credential on file (COF) payment network token. Returned in authorizations that use a payment network token associated with a TMS token.  - `015`: Visa credential on file (COF) payment network token. Returned in authorizations that use a payment network token associated with a TMS token.  - `027`: Click to Pay. 
    attr_accessor :payment_solution

    # Please check with Cybersource customer support to see if your merchant account is configured correctly so you can include this field in your request. * For Payouts: max length for FDCCompass is String (22). 
    attr_accessor :reconciliation_id

    # Value that links the current authorization request to the original authorization request. Set this value to the ID that was returned in the reply message from the original authorization request.  This value is used for:  - Partial authorizations - Split shipments 
    attr_accessor :link_id

    # Attribute that lets you define custom grouping for your processor reports. This field is supported only for **Worldpay VAP**. 
    attr_accessor :report_group

    # Identifier for the **Visa Checkout** order. Visa Checkout provides a unique order ID for every transaction in the Visa Checkout **callID** field. 
    attr_accessor :visa_checkout_id

    attr_accessor :issuer

    # Array of actions (one or more) to be included in the reversal Possible value: - `AP_AUTH_REVERSAL`: Use this when you want to reverse an Alternative Payment Authorization. 
    attr_accessor :action_list

    # This field is used identify the type of payment transaction taking place. This field is applicable for MasterCard transactions only. Possible values: - 201- Mastercard Rebate - 202- rePower Load Value - 203- Gaming Re-pay - 204- General Person-to-Person - 205- General Transfer to Own Account - 206- Agent Cash Out - 207- Payment of Own Credit Card Bill - 208- Business Disbursement - 209- Government/Non-Profit Disbursement - 210- Rapid Merchant Settlement - 211- Cash in at ATM (Usage limited to specific countries) - 212- Cash in at Point of Sale (Usage limited to specific countries) - 213- General Business to Business Transfer - 214- Mastercard Merchant Presented QR - 215- Mastercard Merchant Presented QR Refund Payment - 216- Utility Payments (for Brazil domestic use only) - 217- Government Services (for Brazil domestic use only) - 218- Mobile phone top-ups (for Brazil domestic use only) - 219- Coupon booklet payments (for Brazil domestic use only) - 220- General Person-to-Person Transfer - 221- Person-to-Person Transfer to Card Account - 222- General Transfer to Own Account - 223- Agent Cash Out - 224- Payment of Own Credit Card Bill - 225- Business Disbursement - 226- Transfer to Own Staged Digital Wallet Account - 227- Transfer to Own Debit or Prepaid Account - 228- General Business-to-Business Transfer - 229- Installment-based repayment - 230- Mastercard ATM Cash Pick-Up Transaction - 231- Cryptocurrency - 232- High-risk Securities 
    attr_accessor :transaction_type_indicator

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'payment_solution' => :'paymentSolution',
        :'reconciliation_id' => :'reconciliationId',
        :'link_id' => :'linkId',
        :'report_group' => :'reportGroup',
        :'visa_checkout_id' => :'visaCheckoutId',
        :'issuer' => :'issuer',
        :'action_list' => :'actionList',
        :'transaction_type_indicator' => :'transactionTypeIndicator'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'payment_solution' => :'payment_solution',
        :'reconciliation_id' => :'reconciliation_id',
        :'link_id' => :'link_id',
        :'report_group' => :'report_group',
        :'visa_checkout_id' => :'visa_checkout_id',
        :'issuer' => :'issuer',
        :'action_list' => :'action_list',
        :'transaction_type_indicator' => :'transaction_type_indicator'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'payment_solution' => :'String',
        :'reconciliation_id' => :'String',
        :'link_id' => :'String',
        :'report_group' => :'String',
        :'visa_checkout_id' => :'String',
        :'issuer' => :'Ptsv2paymentsIssuerInformation',
        :'action_list' => :'Array<String>',
        :'transaction_type_indicator' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'paymentSolution')
        self.payment_solution = attributes[:'paymentSolution']
      end

      if attributes.has_key?(:'reconciliationId')
        self.reconciliation_id = attributes[:'reconciliationId']
      end

      if attributes.has_key?(:'linkId')
        self.link_id = attributes[:'linkId']
      end

      if attributes.has_key?(:'reportGroup')
        self.report_group = attributes[:'reportGroup']
      end

      if attributes.has_key?(:'visaCheckoutId')
        self.visa_checkout_id = attributes[:'visaCheckoutId']
      end

      if attributes.has_key?(:'issuer')
        self.issuer = attributes[:'issuer']
      end

      if attributes.has_key?(:'actionList')
        if (value = attributes[:'actionList']).is_a?(Array)
          self.action_list = value
        end
      end

      if attributes.has_key?(:'transactionTypeIndicator')
        self.transaction_type_indicator = attributes[:'transactionTypeIndicator']
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
    # @param [Object] payment_solution Value to be assigned
    def payment_solution=(payment_solution)
      @payment_solution = payment_solution
    end

    # Custom attribute writer method with validation
    # @param [Object] reconciliation_id Value to be assigned
    def reconciliation_id=(reconciliation_id)
      @reconciliation_id = reconciliation_id
    end

    # Custom attribute writer method with validation
    # @param [Object] link_id Value to be assigned
    def link_id=(link_id)
      @link_id = link_id
    end

    # Custom attribute writer method with validation
    # @param [Object] report_group Value to be assigned
    def report_group=(report_group)
      @report_group = report_group
    end

    # Custom attribute writer method with validation
    # @param [Object] visa_checkout_id Value to be assigned
    def visa_checkout_id=(visa_checkout_id)
      @visa_checkout_id = visa_checkout_id
    end

    # Custom attribute writer method with validation
    # @param [Object] transaction_type_indicator Value to be assigned
    def transaction_type_indicator=(transaction_type_indicator)
      @transaction_type_indicator = transaction_type_indicator
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          payment_solution == o.payment_solution &&
          reconciliation_id == o.reconciliation_id &&
          link_id == o.link_id &&
          report_group == o.report_group &&
          visa_checkout_id == o.visa_checkout_id &&
          issuer == o.issuer &&
          action_list == o.action_list &&
          transaction_type_indicator == o.transaction_type_indicator
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [payment_solution, reconciliation_id, link_id, report_group, visa_checkout_id, issuer, action_list, transaction_type_indicator].hash
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
