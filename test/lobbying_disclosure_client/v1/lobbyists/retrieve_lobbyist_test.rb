# typed: false
# frozen_string_literal: true

require 'test_helper'

class RetrieveLobbyistTest < Minitest::Test
  def test_retrieve_lobbyist
    VCR.use_cassette('/v1/lobbyists/retrieve_lobbyist') do
      lobbyist_id = 67_387

      output = LobbyingDisclosureClient::V1::Lobbyists::RetrieveLobbyist.call(
        input: LobbyingDisclosureClient::V1::Lobbyists::RetrieveLobbyist::Input.new(
          id: lobbyist_id
        )
      )

      assert_equal(lobbyist_id, output.id)
    end
  end
end
