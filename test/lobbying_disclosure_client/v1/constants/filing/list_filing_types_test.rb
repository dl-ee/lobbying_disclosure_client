# typed: false
# frozen_string_literal: true

require 'test_helper'

class ListFilingTypesTest < Minitest::Test
  def test_list_filings
    VCR.use_cassette('/v1/constants/filing/list_filing_types') do
      output = LobbyingDisclosureClient::V1::Constants::Filing::ListFilingTypes.call

      output.each do |constant|
        assert_instance_of(LobbyingDisclosureClient::Types::Constant, constant)
      end
    end
  end
end
