# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  class V1
    module Lobbyists
      class ListLobbyists
        extend T::Sig
        extend T::Generic
        include LobbyingDisclosureClient::Interfaces::ListEndpoint

        ListEndpointInputType = type_template { { fixed: Input } }
        ListEndpointOutputType = type_template { { fixed: Output } }

        class Input < T::Struct
          include LobbyingDisclosureClient::Interfaces::ListEndpointInput

          const :id, T.nilable(Integer)
          const :lobbyist_name, T.nilable(String)
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
          const :results, T::Array[LobbyingDisclosureClient::Types::LobbyistWithRegistrant]
        end

        sig do
          override.params(
            input: Input
          ).returns(Output)
        end
        def self.call(input:)
          client = Client.new

          Output.from_hash!(
            client.get(
              LobbyingDisclosureClient::Enums::Route::V1_Lobbyists_ListLobbyists,
              query_params: input.serialize.compact
            )
          )
        end
      end
    end
  end
end
