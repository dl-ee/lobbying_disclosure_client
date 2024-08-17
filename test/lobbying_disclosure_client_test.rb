# typed: true
# frozen_string_literal: true

require 'test_helper'

class LobbyingDisclosureClientTest < Minitest::Test
  def test_api_key_accessor
    assert_nil(LobbyingDisclosureClient.api_key)

    LobbyingDisclosureClient.api_key = 'Hello, world'
    assert_equal(LobbyingDisclosureClient.api_key, 'Hello, world')
  end
end
