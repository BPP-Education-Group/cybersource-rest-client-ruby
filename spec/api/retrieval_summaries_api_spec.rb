=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'spec_helper'
require 'json'

# Unit tests for CyberSource::RetrievalSummariesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RetrievalSummariesApi' do
  before do
    # run before each test
    @instance = CyberSource::RetrievalSummariesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RetrievalSummariesApi' do
    it 'should create an instance of RetrievalSummariesApi' do
      expect(@instance).to be_instance_of(CyberSource::RetrievalSummariesApi)
    end
  end

  # unit tests for get_retrieval_summary
  # Get Retrieval Summaries
  # Retrieval Summary Report Description
  # @param start_time Valid report Start Time in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format.[Rfc Date Format](https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14)  **Example date format:**   - yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSZ (e.g. 2018-01-01T00:00:00.000Z) 
  # @param end_time Valid report End Time in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format.[Rfc Date Format](https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14)  **Example date format:**   - yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSZ (e.g. 2018-01-01T00:00:00.000Z) 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :organization_id Valid Organization Id
  # @return [ReportingV3RetrievalSummariesGet200Response]
  describe 'get_retrieval_summary test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
