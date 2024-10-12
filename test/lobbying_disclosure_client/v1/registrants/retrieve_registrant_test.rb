# typed: false
# frozen_string_literal: true

require 'test_helper'

class RetrieveRegistrantTest < Minitest::Test
  def test_retrieve_registrant
    VCR.use_cassette('/v1/registrants/retrieve_registrant') do
      registrant_id = 762

      output = LobbyingDisclosureClient::V1::Registrants::RetrieveRegistrant.call(
        input: LobbyingDisclosureClient::V1::Registrants::RetrieveRegistrant::Input.new(
          id: registrant_id
        )
      )

      assert_equal(registrant_id, output.id)
    end
  end
end
