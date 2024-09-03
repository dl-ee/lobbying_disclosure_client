# typed: false
# frozen_string_literal: true

require 'test_helper'

class RetrieveFilingTest < Minitest::Test
  def test_retrieve_filing
    VCR.use_cassette('/v1/filings/retrieve_filing') do
      filing_uuid = '00b70943-0447-4a2b-8507-3b77e5d324bf'

      output = LobbyingDisclosureClient::V1::Filings::RetrieveFiling.call(
        input: LobbyingDisclosureClient::V1::Filings::RetrieveFiling::Input.new(
          filing_uuid:
        )
      )

      assert_equal(filing_uuid, output.filing_uuid)
    end
  end
end
