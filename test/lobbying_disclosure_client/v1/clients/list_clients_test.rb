# typed: false
# frozen_string_literal: true

require 'test_helper'

class ListClientsTest < Minitest::Test
  def test_list_clients
    VCR.use_cassette('/v1/clients/list_clients') do
      client_name = 'Boston Scientific Corporation'

      output = LobbyingDisclosureClient::V1::Clients::ListClients.call(
        input: LobbyingDisclosureClient::V1::Clients::ListClients::Input.new(
          client_name:
        )
      )

      assert(
        output.results.all? do |client|
          client.name.downcase.include?(client_name.downcase)
        end
      )
    end
  end
end
