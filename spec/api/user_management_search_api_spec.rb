=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'spec_helper'
require 'json'

# Unit tests for CyberSource::UserManagementSearchApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UserManagementSearchApi' do
  before do
    # run before each test
    @instance = CyberSource::UserManagementSearchApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserManagementSearchApi' do
    it 'should create an instance of UserManagementSearchApi' do
      expect(@instance).to be_instance_of(CyberSource::UserManagementSearchApi)
    end
  end

  # unit tests for search_users
  # Search User Information
  # This endpoint is to get all the user information depending on the filter criteria passed in request body.
  # @param search_request 
  # @param [Hash] opts the optional parameters
  # @return [UmsV1UsersGet200Response]
  describe 'search_users test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
