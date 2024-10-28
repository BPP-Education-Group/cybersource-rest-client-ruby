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

# Unit tests for CyberSource::Ptsv2paymentsProcessingInformationCaptureOptions
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Ptsv2paymentsProcessingInformationCaptureOptions' do
  before do
    # run before each test
    @instance = CyberSource::Ptsv2paymentsProcessingInformationCaptureOptions.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Ptsv2paymentsProcessingInformationCaptureOptions' do
    it 'should create an instance of Ptsv2paymentsProcessingInformationCaptureOptions' do
      expect(@instance).to be_instance_of(CyberSource::Ptsv2paymentsProcessingInformationCaptureOptions)
    end
  end
  describe 'test attribute "capture_sequence_number"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "total_capture_count"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "date_to_capture"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "is_final"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "notes"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
