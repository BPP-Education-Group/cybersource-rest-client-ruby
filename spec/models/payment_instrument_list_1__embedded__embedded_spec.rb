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

# Unit tests for CyberSource::PaymentInstrumentList1EmbeddedEmbedded
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PaymentInstrumentList1EmbeddedEmbedded' do
  before do
    # run before each test
    @instance = CyberSource::PaymentInstrumentList1EmbeddedEmbedded.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentInstrumentList1EmbeddedEmbedded' do
    it 'should create an instance of PaymentInstrumentList1EmbeddedEmbedded' do
      expect(@instance).to be_instance_of(CyberSource::PaymentInstrumentList1EmbeddedEmbedded)
    end
  end
  describe 'test attribute "instrument_identifier"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
