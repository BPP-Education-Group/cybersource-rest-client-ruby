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

# Unit tests for CyberSource::InlineResponse2011RegistrationInformation
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InlineResponse2011RegistrationInformation' do
  before do
    # run before each test
    @instance = CyberSource::InlineResponse2011RegistrationInformation.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InlineResponse2011RegistrationInformation' do
    it 'should create an instance of InlineResponse2011RegistrationInformation' do
      expect(@instance).to be_instance_of(CyberSource::InlineResponse2011RegistrationInformation)
    end
  end
  describe 'test attribute "boarding_package_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "mode"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["COMPLETE", "PARTIAL"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.mode = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "sales_rep_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
