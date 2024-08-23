# typed: true
# frozen_string_literal: true

require 'test_helper'

class V1Test < Minitest::Test
  def test_route
    VCR.use_cassette('/v1') do
      response = LobbyingDisclosureClient::V1.call

      assert_instance_of(Hash, response)
    end
  end
end
