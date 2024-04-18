=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'date'

module CyberSource
  class ECheckConfigUnderwriting
    # Mandatory  Free-text (csv)  Possible values (combination):  CCD — Cash Concentration or Disbursement, or CCD, is a charge or refund against a business checking account. One-time or recurring CCD transactions are fund transfers to or from a corporate entity. A standing authorization is required for recurring transactions. PPD — Prearranged Payment and Deposit Entry, or PPD, is a charge or refund against a customer's checking or savings account. PPD entries can only be originated when payment and deposit terms between the merchant and the customer are prearranged. A written authorization from the customer is required for one-time transactions and a written standing authorization is required for recurring transactions. TEL — Telephone-Initiated Entry, or TEL, is a one-time charge against a customer's checking or savings account. TEL transactions can only be originated when a business relationship between the merchant and the customer already exists; or if a relationship does not exist, then only when the customer initiates the telephone call to the merchant. Payment authorization is obtained from the customer by telephone. WEB — Internet-Initiated Entry or WEB is a charge against a customer's checking or savings account. One-time or recurring WEB transactions are originated through the Internet. Payment authorization is also obtained from the customer through the Internet. 
    attr_accessor :standard_entry_class_codes

    # Mandatory  Determines whether CYBS has placed the merchant on a funding hold This will often be set to True for new merchants until the risk team has completed additional verification of their first transaction. It will be switched to \"false\" once underwriting review is completed and we are ready to start funding the merchant. 
    attr_accessor :enable_hold

    # Mandatory  Monthly Maximum total Transaction Amount 12 digit including decimal 
    attr_accessor :monthly_total_transaction_amount_limit

    # Mandatory  Funds Hold Days (Number of days funds will be held before it will be deposited into merchant account) 3 digits 
    attr_accessor :holding_days

    # Optional  Allow Credits (True/False) 
    attr_accessor :enable_credits

    # Mandatory  Maximum total Transaction Amount This is a per transaction limit. For example, the merchant is limited to processing transactions under $100 12 digits (including decimal - USD only) 
    attr_accessor :transaction_amount_limit

    # Mandatory Reserve Method  Possible value: - fixed - none Most merchants do not have a reserve attached to their account so the default value would be \"none.\"   For a Fixed Reserve, the reserve balance is established by either, (1) a receipt of a lump sum deposit from a merchant, or (2) withholding funds at a Reserve Rate established for the account from each batch settlement until the reserve balance is equal to a set Reserve Target. A Fixed Reserve may also be established by a combination of lump sum deposit and withholding of settlement funds.  A Rolling Reserve balance is established by withholding from a merchant's available settlement funds at a Reserve Rate (percentage) and no Reserve Target is specified. Rather, each amount withheld is retained for a specified number of Reserve Holding Days and then released back to the merchant. 
    attr_accessor :risk_reserve_method

    # Mandatory  Reserve Rate (% of TPV)=> Relevant for Rolling Reserve and Fixed Reserve The percentage rate at which risk funds are withheld from each eCheck.Net batch settlement. 
    attr_accessor :risk_reserve_rate

    # Mandatory  Reserve Target (fixed $ amount)=> Relevant for Fixed Reserve ONLY  The maximum dollar amount that can be held in Risk Reserve for a fixed reserve. Once risk withholdings reach the Reserve Target established for the eCheck.Net account, a portion of available funds will be deposited to the merchant's bank account 12 digit including decimal 
    attr_accessor :risk_reserve_target_amount

    # Solution organization id
    attr_accessor :solution_organization_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'standard_entry_class_codes' => :'standardEntryClassCodes',
        :'enable_hold' => :'enableHold',
        :'monthly_total_transaction_amount_limit' => :'monthlyTotalTransactionAmountLimit',
        :'holding_days' => :'holdingDays',
        :'enable_credits' => :'enableCredits',
        :'transaction_amount_limit' => :'transactionAmountLimit',
        :'risk_reserve_method' => :'riskReserveMethod',
        :'risk_reserve_rate' => :'riskReserveRate',
        :'risk_reserve_target_amount' => :'riskReserveTargetAmount',
        :'solution_organization_id' => :'solutionOrganizationId'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'standard_entry_class_codes' => :'standard_entry_class_codes',
        :'enable_hold' => :'enable_hold',
        :'monthly_total_transaction_amount_limit' => :'monthly_total_transaction_amount_limit',
        :'holding_days' => :'holding_days',
        :'enable_credits' => :'enable_credits',
        :'transaction_amount_limit' => :'transaction_amount_limit',
        :'risk_reserve_method' => :'risk_reserve_method',
        :'risk_reserve_rate' => :'risk_reserve_rate',
        :'risk_reserve_target_amount' => :'risk_reserve_target_amount',
        :'solution_organization_id' => :'solution_organization_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'standard_entry_class_codes' => :'String',
        :'enable_hold' => :'BOOLEAN',
        :'monthly_total_transaction_amount_limit' => :'Float',
        :'holding_days' => :'Float',
        :'enable_credits' => :'BOOLEAN',
        :'transaction_amount_limit' => :'Float',
        :'risk_reserve_method' => :'String',
        :'risk_reserve_rate' => :'Float',
        :'risk_reserve_target_amount' => :'Float',
        :'solution_organization_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'standardEntryClassCodes')
        self.standard_entry_class_codes = attributes[:'standardEntryClassCodes']
      else
        self.standard_entry_class_codes = 'CCD,PPD,TEL,WEB'
      end

      if attributes.has_key?(:'enableHold')
        self.enable_hold = attributes[:'enableHold']
      else
        self.enable_hold = true
      end

      if attributes.has_key?(:'monthlyTotalTransactionAmountLimit')
        self.monthly_total_transaction_amount_limit = attributes[:'monthlyTotalTransactionAmountLimit']
      end

      if attributes.has_key?(:'holdingDays')
        self.holding_days = attributes[:'holdingDays']
      end

      if attributes.has_key?(:'enableCredits')
        self.enable_credits = attributes[:'enableCredits']
      end

      if attributes.has_key?(:'transactionAmountLimit')
        self.transaction_amount_limit = attributes[:'transactionAmountLimit']
      end

      if attributes.has_key?(:'riskReserveMethod')
        self.risk_reserve_method = attributes[:'riskReserveMethod']
      end

      if attributes.has_key?(:'riskReserveRate')
        self.risk_reserve_rate = attributes[:'riskReserveRate']
      end

      if attributes.has_key?(:'riskReserveTargetAmount')
        self.risk_reserve_target_amount = attributes[:'riskReserveTargetAmount']
      end

      if attributes.has_key?(:'solutionOrganizationId')
        self.solution_organization_id = attributes[:'solutionOrganizationId']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @standard_entry_class_codes.nil?
        invalid_properties.push('invalid value for "standard_entry_class_codes", standard_entry_class_codes cannot be nil.')
      end

      if @enable_hold.nil?
        invalid_properties.push('invalid value for "enable_hold", enable_hold cannot be nil.')
      end

      if @monthly_total_transaction_amount_limit.nil?
        invalid_properties.push('invalid value for "monthly_total_transaction_amount_limit", monthly_total_transaction_amount_limit cannot be nil.')
      end

      if @holding_days.nil?
        invalid_properties.push('invalid value for "holding_days", holding_days cannot be nil.')
      end

      if @transaction_amount_limit.nil?
        invalid_properties.push('invalid value for "transaction_amount_limit", transaction_amount_limit cannot be nil.')
      end

      if @risk_reserve_method.nil?
        invalid_properties.push('invalid value for "risk_reserve_method", risk_reserve_method cannot be nil.')
      end

      if @risk_reserve_rate.nil?
        invalid_properties.push('invalid value for "risk_reserve_rate", risk_reserve_rate cannot be nil.')
      end

      if @risk_reserve_target_amount.nil?
        invalid_properties.push('invalid value for "risk_reserve_target_amount", risk_reserve_target_amount cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @standard_entry_class_codes.nil?
      return false if @enable_hold.nil?
      return false if @monthly_total_transaction_amount_limit.nil?
      return false if @holding_days.nil?
      return false if @transaction_amount_limit.nil?
      return false if @risk_reserve_method.nil?
      return false if @risk_reserve_rate.nil?
      return false if @risk_reserve_target_amount.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          standard_entry_class_codes == o.standard_entry_class_codes &&
          enable_hold == o.enable_hold &&
          monthly_total_transaction_amount_limit == o.monthly_total_transaction_amount_limit &&
          holding_days == o.holding_days &&
          enable_credits == o.enable_credits &&
          transaction_amount_limit == o.transaction_amount_limit &&
          risk_reserve_method == o.risk_reserve_method &&
          risk_reserve_rate == o.risk_reserve_rate &&
          risk_reserve_target_amount == o.risk_reserve_target_amount &&
          solution_organization_id == o.solution_organization_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [standard_entry_class_codes, enable_hold, monthly_total_transaction_amount_limit, holding_days, enable_credits, transaction_amount_limit, risk_reserve_method, risk_reserve_rate, risk_reserve_target_amount, solution_organization_id].hash
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
