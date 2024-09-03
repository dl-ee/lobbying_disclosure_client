# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Types
    class Registrant < T::Struct
      const :address_1, String
      const :address_2, T.nilable(String)
      const :address_3, T.nilable(String)
      const :address_4, T.nilable(String)
      const :city, T.nilable(String)
      const :contact_name, String
      const :contact_telephone, String
      const :country, LobbyingDisclosureClient::Enums::Country
      const :country_display, String
      const :description, T.nilable(String)
      const :dt_updated, DateTime
      const :house_registrant_id, T.nilable(Integer)
      const :id, Integer
      const :name, String
      const :ppb_country, LobbyingDisclosureClient::Enums::Country
      const :ppb_country_display, String
      const :state, T.nilable(LobbyingDisclosureClient::Enums::State)
      const :state_display, String
      const :url, String
      const :zip, T.nilable(String)
    end
  end
end
