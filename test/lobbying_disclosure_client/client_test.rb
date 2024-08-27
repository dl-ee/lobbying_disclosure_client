# typed: false
# frozen_string_literal: true

require 'test_helper'

class ClientTest < Minitest::Test
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
end
