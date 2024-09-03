# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Types
    class AffiliatedOrganization < T::Struct
      const :address_1, T.nilable(String)
      const :address_2, T.nilable(String)
      const :address_3, T.nilable(String)
      const :address_4, T.nilable(String)
      const :city, T.nilable(String)
      const :country, LobbyingDisclosureClient::Enums::Country
      const :country_display, String
      const :name, String
      const :ppb_city, T.nilable(String)
      const :ppb_country, LobbyingDisclosureClient::Enums::Country
      const :ppb_country_display, String
      const :ppb_state, LobbyingDisclosureClient::Enums::State
      const :ppb_state_display, String
      const :state, LobbyingDisclosureClient::Enums::State
      const :state_display, String
      const :url, String
      const :zip, T.nilable(String)
    end
  end
end
