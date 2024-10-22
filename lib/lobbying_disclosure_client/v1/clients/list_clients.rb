# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  class V1
    module Clients
      class ListClients
        extend T::Sig

        class Input < T::Struct
          include LobbyingDisclosureClient::Interfaces::ListEndpointInput

          const :client_country, T.nilable(LobbyingDisclosureClient::Enums::Country)
          const :client_name, T.nilable(String)
          const :client_ppb_country, T.nilable(LobbyingDisclosureClient::Enums::Country)
          const :client_ppb_state, T.nilable(LobbyingDisclosureClient::Enums::State)
          const :client_state, T.nilable(LobbyingDisclosureClient::Enums::State)
          const :id, T.nilable(Integer)
          const :ordering, T.nilable(String)
          const :page, T.nilable(Integer)
          const :page_size, T.nilable(Integer)
          const :registrant_id, T.nilable(Integer)
          const :registrant_name, T.nilable(String)
        end

        class Output < T::Struct
          include LobbyingDisclosureClient::Interfaces::ListEndpointOutput

          const :count, Integer
          const :next, T.nilable(String)
          const :previous, T.nilable(String)
          const :results, T::Array[LobbyingDisclosureClient::Types::ClientWithRegistrant]
        end

        sig do
          params(
            input: Input
          ).returns(Output)
        end
        def self.call(input:)
          client = Client.new

          Output.from_hash!(
            client.get(
              LobbyingDisclosureClient::Enums::Route::V1_Clients_ListClients,
              query_params: input.serialize.compact
            )
          )
        end
      end
    end
  end
end
