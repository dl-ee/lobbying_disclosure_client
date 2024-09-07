# typed: false
# frozen_string_literal: true

require 'test_helper'

class ListFilingsTest < Minitest::Test
  def test_list_filings
    VCR.use_cassette('/v1/filings/list_filings') do
      registrant_id = 401_104_726
      registrant_country = LobbyingDisclosureClient::Enums::Country::Us

      output = LobbyingDisclosureClient::V1::Filings::ListFilings.call(
        input: LobbyingDisclosureClient::V1::Filings::ListFilings::Input.new(
          registrant_id:,
          registrant_country:
        )
      )

      assert(
        output.results.all? do |filing|
          filing.registrant.id == registrant_id &&
            filing.registrant.country == registrant_country
        end
      )
    end
  end
end
