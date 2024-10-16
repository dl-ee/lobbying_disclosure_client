# typed: false
# frozen_string_literal: true

require 'test_helper'

class ClientTest < Minitest::Test
  def teardown
    LobbyingDisclosureClient.api_key = nil
  end

  def test_auth_when_no_api_key
    cassette = YAML.load_file('test/cassettes/v1_anonymous.yml')
    api_call = cassette['http_interactions'].first

    assert_nil(api_call.dig('request', 'headers', 'Authorization'))
  end

  def test_auth_with_api_key
    cassette = YAML.load_file('test/cassettes/v1_authorized.yml')
    api_call = cassette['http_interactions'].first
    authorization_header = api_call.dig('request', 'headers', 'Authorization').first

    assert_match(/^Token \w+$/, authorization_header)
  end

  def test_invalid_api_key
    VCR.use_cassette('/invalid_api_key') do
      LobbyingDisclosureClient.api_key = 'Invalid key'

      assert_raises(LobbyingDisclosureClient::Errors::InvalidApiKeyError) do
        LobbyingDisclosureClient::V1::Constants::General::ListStates.call
      end
    end
  end

  def test_rate_limit_error
    # The anonymous rate limit is 15 requests per minute.
    #
    # 15.times do
    #   LobbyingDisclosureClient::V1::Filings::RetrieveFiling.call(
    #     input: LobbyingDisclosureClient::V1::Filings::RetrieveFiling::Input.new(
    #       filing_uuid: 'some_uuid'
    #     )
    #   )
    # end

    VCR.use_cassette('/rate_limit_error') do
      error = assert_raises(LobbyingDisclosureClient::Errors::RequestThrottledError) do
        LobbyingDisclosureClient::V1::Filings::RetrieveFiling.call(
          input: LobbyingDisclosureClient::V1::Filings::RetrieveFiling::Input.new(
            filing_uuid: 'some_uuid'
          )
        )
      end

      assert_instance_of(Integer, error.retry_after)
    end
  end
end
