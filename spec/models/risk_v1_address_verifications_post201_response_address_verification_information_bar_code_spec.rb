=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CyberSource::RiskV1AddressVerificationsPost201ResponseAddressVerificationInformationBarCode
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RiskV1AddressVerificationsPost201ResponseAddressVerificationInformationBarCode' do
  before do
    # run before each test
    @instance = CyberSource::RiskV1AddressVerificationsPost201ResponseAddressVerificationInformationBarCode.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RiskV1AddressVerificationsPost201ResponseAddressVerificationInformationBarCode' do
    it 'should create an instance of RiskV1AddressVerificationsPost201ResponseAddressVerificationInformationBarCode' do
      expect(@instance).to be_instance_of(CyberSource::RiskV1AddressVerificationsPost201ResponseAddressVerificationInformationBarCode)
    end
  end
  describe 'test attribute "value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "check_digit"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
