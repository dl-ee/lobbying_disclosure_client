# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  class V1
    module Constants
      module Lobbyist
        class ListLobbyistPrefixes
          extend T::Sig

          sig do
            returns(T::Array[LobbyingDisclosureClient::Types::Constant])
          end
          def self.call
            client = Client.new
            client.get(
              LobbyingDisclosureClient::Enums::Route::V1_Constants_Lobbyist_Prefixes
            ).map do |constant|
              LobbyingDisclosureClient::Types::Constant.from_hash!(constant)
            end
          end
        end
      end
    end
  end
end
