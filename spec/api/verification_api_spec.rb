=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'spec_helper'
require 'json'

# Unit tests for CyberSource::VerificationApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'VerificationApi' do
  before do
    # run before each test
    @instance = CyberSource::VerificationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VerificationApi' do
    it 'should create an instance of VerificationApi' do
      expect(@instance).to be_instance_of(CyberSource::VerificationApi)
    end
  end

  # unit tests for validate_export_compliance
  # Validate export compliance
  # This call checks customer data against specified watch lists to ensure export compliance. 
  # @param validate_export_compliance_request 
  # @param [Hash] opts the optional parameters
  # @return [RiskV1ExportComplianceInquiriesPost201Response]
  describe 'validate_export_compliance test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for verify_customer_address
  # Verify customer address
  # This call verifies that the customer address submitted is valid.
  # @param verify_customer_address_request 
  # @param [Hash] opts the optional parameters
  # @return [RiskV1AddressVerificationsPost201Response]
  describe 'verify_customer_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
