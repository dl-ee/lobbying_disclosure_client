# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Types
    class ClientWithRegistrant < T::Struct
      extend T::Sig

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
      const :ppb_state, T.nilable(LobbyingDisclosureClient::Enums::State)
      const :ppb_state_display, T.nilable(String)
      const :registrant, LobbyingDisclosureClient::Types::Registrant
      const :state, T.nilable(LobbyingDisclosureClient::Enums::State)
      const :state_display, T.nilable(String)
      const :url, String

      sig do
        params(
          hash: T::Hash[String, T.untyped],
          strict: T::Boolean
        ).returns(T.self_type)
      end
      def deserialize(hash, strict = false)
        super(
          hash.merge(
            'effective_date' => hash['effective_date'] ? Date.parse(hash['effective_date']) : nil
          ),
          strict
        )
      end
    end
  end
end
