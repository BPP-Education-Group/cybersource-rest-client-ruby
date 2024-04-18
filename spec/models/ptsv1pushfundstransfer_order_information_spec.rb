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

# Unit tests for CyberSource::Ptsv1pushfundstransferOrderInformation
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Ptsv1pushfundstransferOrderInformation' do
  before do
    # run before each test
    @instance = CyberSource::Ptsv1pushfundstransferOrderInformation.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Ptsv1pushfundstransferOrderInformation' do
    it 'should create an instance of Ptsv1pushfundstransferOrderInformation' do
      expect(@instance).to be_instance_of(CyberSource::Ptsv1pushfundstransferOrderInformation)
    end
  end
  describe 'test attribute "amount_details"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "is_cryptocurrency_purchase"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "surcharge"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
