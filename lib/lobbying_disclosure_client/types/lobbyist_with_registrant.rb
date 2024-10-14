# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Types
    class LobbyistWithRegistrant < T::Struct
      const :first_name, T.nilable(String)
      const :id, Integer
      const :last_name, T.nilable(String)
      const :middle_name, T.nilable(String)
      const :nickname, T.nilable(String)
      const :prefix, T.nilable(LobbyingDisclosureClient::Enums::Prefix)
      const :prefix_display, T.nilable(String)
      const :registrant, LobbyingDisclosureClient::Types::Registrant
      const :suffix, T.nilable(LobbyingDisclosureClient::Enums::Suffix)
      const :suffix_display, T.nilable(String)
    end
  end
end
