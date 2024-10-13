# typed: false
# frozen_string_literal: true

require 'test_helper'

class RetrieveClientTest < Minitest::Test
  def test_retrieve_client
    VCR.use_cassette('/v1/clients/retrieve_client') do
      client_id = 202_513

      output = LobbyingDisclosureClient::V1::Clients::RetrieveClient.call(
        input: LobbyingDisclosureClient::V1::Clients::RetrieveClient::Input.new(
          id: client_id
        )
      )

      assert_equal(client_id, output.id)
    end
  end
end
