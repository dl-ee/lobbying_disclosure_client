# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Types
    class ConvictionDisclosure < T::Struct
      const :date, Date
      const :description, String
      const :lobbyist, LobbyingDisclosureClient::Types::Lobbyist
    end
  end
end
