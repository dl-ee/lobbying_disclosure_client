# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Types
    class Client < T::Struct
      const :client_government_entity, T.nilable(T::Boolean)
      const :client_id, String
      const :client_self_select, T.nilable(T::Boolean)
      const :country, LobbyingDisclosureClient::Enums::Country
      const :country_display, String
      const :effective_date, T.nilable(Date)
      const :general_description, T.nilable(String)
      const :id, Integer
      const :name, String
      const :ppb_country, LobbyingDisclosureClient::Enums::Country
      const :ppb_country_display, String
      const :ppb_state, LobbyingDisclosureClient::Enums::State
      const :ppb_state_display, String
      const :state, LobbyingDisclosureClient::Enums::State
      const :state_display, String
      const :url, String
    end
  end
end
