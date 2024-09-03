# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Types
    class LobbyistForLobbyingActivity < T::Struct
      const :covered_position, T.nilable(String)
      const :lobbyist, LobbyingDisclosureClient::Types::Lobbyist
      const :new, T.nilable(T::Boolean)
    end
  end
end
