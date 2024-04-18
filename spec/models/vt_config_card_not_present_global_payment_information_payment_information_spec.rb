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

# Unit tests for CyberSource::VTConfigCardNotPresentGlobalPaymentInformationPaymentInformation
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'VTConfigCardNotPresentGlobalPaymentInformationPaymentInformation' do
  before do
    # run before each test
    @instance = CyberSource::VTConfigCardNotPresentGlobalPaymentInformationPaymentInformation.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VTConfigCardNotPresentGlobalPaymentInformationPaymentInformation' do
    it 'should create an instance of VTConfigCardNotPresentGlobalPaymentInformationPaymentInformation' do
      expect(@instance).to be_instance_of(CyberSource::VTConfigCardNotPresentGlobalPaymentInformationPaymentInformation)
    end
  end
  describe 'test attribute "display_card_verification_value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["VISA", "MASTER_CARD", "AMEX", "DISCOVER", "DINERS_CLUB", "CARTE_BLANCHE", "JCB", "ENROUTE", "JAL", "SWITCH_SOLO", "DELTA", "VISA_ELECTRON", "DANKORT", "LASER", "CARTE_SBANCAIRES", "CARTASI", "MAESTRO_INTERNATIONAL", "GE_MONEY_UK_CARD", "HIPER_CARD", "ELO"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.display_card_verification_value = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "require_card_verification_value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["VISA", "MASTER_CARD", "AMEX", "DISCOVER", "DINERS_CLUB", "CARTE_BLANCHE", "JCB", "ENROUTE", "JAL", "SWITCH_SOLO", "DELTA", "VISA_ELECTRON", "DANKORT", "LASER", "CARTE_SBANCAIRES", "CARTASI", "MAESTRO_INTERNATIONAL", "GE_MONEY_UK_CARD", "HIPER_CARD", "ELO"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.require_card_verification_value = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "accepted_card_types"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["VISA", "MASTER_CARD", "AMEX", "DISCOVER", "DINERS_CLUB", "CARTE_BLANCHE", "JCB", "ENROUTE", "JAL", "SWITCH_SOLO", "DELTA", "VISA_ELECTRON", "DANKORT", "LASER", "CARTE_SBANCAIRES", "CARTASI", "MAESTRO_INTERNATIONAL", "GE_MONEY_UK_CARD", "HIPER_CARD", "ELO"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.accepted_card_types = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "display_credit_cards"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "display_echecks"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "display_debt_indicator"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "display_bill_payment"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "enable_echecks"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "display_ignore_e_check_avs_checkbox"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "first_name_required"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "last_name_required"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "display_first_name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "display_last_name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
