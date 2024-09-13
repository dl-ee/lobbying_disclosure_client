# typed: false
# frozen_string_literal: true

require 'test_helper'

class ConstantsValidatorTest < Minitest::Test
  def test_success
    stubbed_items_to_validate = [
      LobbyingDisclosureClient::Util::ConstantsValidator::ItemToValidate.new(
        enum_klass: LobbyingDisclosureClient::Enums::FilingType,
        api_klass: LobbyingDisclosureClient::V1::Constants::Filing::ListFilingTypes
      )
    ]

    stubbed_api_values = LobbyingDisclosureClient::Enums::FilingType.each_value.map do |value|
      LobbyingDisclosureClient::Types::Constant.new(
        name: value.serialize,
        value: value.serialize
      )
    end

    LobbyingDisclosureClient::Util::ConstantsValidator.stub_const(:ITEMS_TO_VALIDATE, stubbed_items_to_validate) do
      LobbyingDisclosureClient::V1::Constants::Filing::ListFilingTypes.stub(:call, stubbed_api_values) do
        # Should not raise
        validate!
      end
    end
  end

  def test_failure
    stubbed_items_to_validate = [
      LobbyingDisclosureClient::Util::ConstantsValidator::ItemToValidate.new(
        enum_klass: LobbyingDisclosureClient::Enums::FilingType,
        api_klass: LobbyingDisclosureClient::V1::Constants::Filing::ListFilingTypes
      )
    ]

    stubbed_api_values = []

    LobbyingDisclosureClient::Util::ConstantsValidator.stub_const(:ITEMS_TO_VALIDATE, stubbed_items_to_validate) do
      LobbyingDisclosureClient::V1::Constants::Filing::ListFilingTypes.stub(:call, stubbed_api_values) do
        assert_raises(LobbyingDisclosureClient::Util::ConstantsValidator::InvalidEnumError) do
          validate!
        end
      end
    end
  end

  private

  def validate!
    silence_stdout do
      LobbyingDisclosureClient::Util::ConstantsValidator.validate!
    end
  end

  def silence_stdout
    original_stdout = $stdout
    $stdout = File.open(File::NULL, 'w')
    yield
  ensure
    $stdout = original_stdout
  end
end
