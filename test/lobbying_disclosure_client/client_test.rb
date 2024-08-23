# typed: false
# frozen_string_literal: true

require 'test_helper'

class ClientTest < Minitest::Test
  def teardown
    LobbyingDisclosureClient.api_key = nil
  end

  def test_auth_when_no_api_key
    Faraday.stub(:new, proc { |*args, &_block|
      headers = args[0][:headers]

      assert_empty(headers)
      Faraday.default_connection
    }) do
      VCR.use_cassette('/v1') do
        LobbyingDisclosureClient::Client.new.get('/v1/')
      end
    end
  end

  def test_auth_with_api_key
    api_key = SecureRandom.uuid
    LobbyingDisclosureClient.api_key = api_key

    Faraday.stub(:new, proc { |*args, &_block|
      headers = args[0][:headers]

      assert_equal(headers, { 'Authorization' => "Token #{api_key}" })
      Faraday.default_connection
    }) do
      VCR.use_cassette('/v1') do
        LobbyingDisclosureClient::Client.new.get('/v1/')
      end
    end
  end
end
