# typed: false
# frozen_string_literal: true

require 'test_helper'

class ListLobbyistPrefixesTest < Minitest::Test
  def test_list_lobbyist_prefixes
    VCR.use_cassette('/v1/constants/lobbyist/list_lobbyist_prefixes') do
      output = LobbyingDisclosureClient::V1::Constants::Lobbyist::ListLobbyistPrefixes.call

      output.each do |constant|
        assert_instance_of(LobbyingDisclosureClient::Types::Constant, constant)
      end
    end
  end
end
