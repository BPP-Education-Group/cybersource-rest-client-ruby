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

# Unit tests for CyberSource::TmsNetworkTokenServicesNotifications
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TmsNetworkTokenServicesNotifications' do
  before do
    # run before each test
    @instance = CyberSource::TmsNetworkTokenServicesNotifications.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TmsNetworkTokenServicesNotifications' do
    it 'should create an instance of TmsNetworkTokenServicesNotifications' do
      expect(@instance).to be_instance_of(CyberSource::TmsNetworkTokenServicesNotifications)
    end
  end
  describe 'test attribute "enabled"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
