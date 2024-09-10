# typed: false
# frozen_string_literal: true

require 'test_helper'

class ListLobbyistSuffixesTest < Minitest::Test
  def test_list_lobbyist_suffixes
    VCR.use_cassette('/v1/constants/lobbyist/list_lobbyist_suffixes') do
      output = LobbyingDisclosureClient::V1::Constants::Lobbyist::ListLobbyistSuffixes.call

      output.each do |constant|
        assert_instance_of(LobbyingDisclosureClient::Types::Constant, constant)
      end
    end
  end
end
