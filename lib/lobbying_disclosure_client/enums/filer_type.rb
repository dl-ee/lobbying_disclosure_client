# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Enums
    class FilerType < T::Enum
      enums do
        Lobbyist = new('lobbyist')
        Organization = new('organization')
      end
    end
  end
end
