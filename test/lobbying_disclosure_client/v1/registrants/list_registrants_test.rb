# typed: false
# frozen_string_literal: true

require 'test_helper'

class ListRegistrantsTest < Minitest::Test
  def test_list_registrants
    VCR.use_cassette('/v1/registrants/list_registrants') do
      registrant_name = 'Alaska Wilderness League'

      output = LobbyingDisclosureClient::V1::Registrants::ListRegistrants.call(
        input: LobbyingDisclosureClient::V1::Registrants::ListRegistrants::Input.new(
          registrant_name:
        )
      )

      assert(
        output.results.all? do |registrant|
          registrant.name.downcase.include?(registrant_name.downcase)
        end
      )
    end
  end
end
