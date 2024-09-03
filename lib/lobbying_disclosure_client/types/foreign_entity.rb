# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Types
    class ForeignEntity < T::Struct
      const :address, T.nilable(String)
      const :city, T.nilable(String)
      const :contribution, T.nilable(BigDecimal)
      const :country, LobbyingDisclosureClient::Enums::Country
      const :country_display, String
      const :name, String
      const :ownership_percentage, T.nilable(BigDecimal)
      const :ppb_city, T.nilable(String)
      const :ppb_country, LobbyingDisclosureClient::Enums::Country
      const :ppb_country_display, String
      const :ppb_state, T.nilable(LobbyingDisclosureClient::Enums::State)
      const :ppb_state_display, String
      const :state, T.nilable(LobbyingDisclosureClient::Enums::State)
      const :state_display, String
    end
  end
end
