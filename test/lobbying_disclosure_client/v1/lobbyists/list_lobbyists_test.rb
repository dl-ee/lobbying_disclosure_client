# typed: false
# frozen_string_literal: true

require 'test_helper'

class ListLobbyistsTest < Minitest::Test
  def test_retrieve_lobbyist
    VCR.use_cassette('/v1/lobbyists/list_lobbyists') do
      registrant_name = 'Miller & Chevalier Chartered'

      output = LobbyingDisclosureClient::V1::Lobbyists::ListLobbyists.call(
        input: LobbyingDisclosureClient::V1::Lobbyists::ListLobbyists::Input.new(
          registrant_name:
        )
      )

      assert(
        output.results.all? do |lobbyist|
          lobbyist.registrant.name.downcase.include?(registrant_name.downcase)
        end
      )
    end
  end
end
