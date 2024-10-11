# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Types
    class ContributionReport < T::Struct
      extend T::Sig

      const :address_1, T.nilable(String)
      const :address_2, T.nilable(String)
      const :city, T.nilable(String)
      const :comments, T.nilable(String)
      const :contact_name, T.nilable(String)
      const :contribution_items, T::Array[LobbyingDisclosureClient::Types::ContributionItem]
      const :country, LobbyingDisclosureClient::Enums::Country
      const :country_display, T.nilable(String)
      const :dt_posted, DateTime
      const :filer_type, LobbyingDisclosureClient::Enums::FilerType
      const :filer_type_display, String
      const :filing_document_content_type, String
      const :filing_document_url, String
      const :filing_period, LobbyingDisclosureClient::Enums::FilingPeriod
      const :filing_period_display, String
      const :filing_type, LobbyingDisclosureClient::Enums::FilingType
      const :filing_type_display, String
      const :filing_uuid, String
      const :filing_year, Integer
      const :lobbyist, T.nilable(LobbyingDisclosureClient::Types::Lobbyist)
      const :no_contributions, T.nilable(T::Boolean)
      const :pacs, T.nilable(T::Array[String])
      const :registrant, LobbyingDisclosureClient::Types::Registrant
      const :state, LobbyingDisclosureClient::Enums::State
      const :state_display, String
      const :url, String
      const :zip, T.nilable(String)

      sig do
        params(
          hash: T::Hash[String, T.untyped],
          strict: T::Boolean
        ).returns(T.self_type)
      end
      def deserialize(hash, strict = false)
        super(
          hash.merge(
            'dt_posted' => hash['dt_posted'] ? DateTime.parse(hash['dt_posted']) : nil
          ),
          strict
        )
      end
    end
  end
end
