# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Types
    class Filing < T::Struct
      extend T::Sig

      const :affiliated_organizations, T::Array[LobbyingDisclosureClient::Types::AffiliatedOrganization]
      const :client, LobbyingDisclosureClient::Types::Client
      const :conviction_disclosures, T::Array[LobbyingDisclosureClient::Types::ConvictionDisclosure]
      const :foreign_entities, T::Array[LobbyingDisclosureClient::Types::ForeignEntity]
      const :lobbying_activities, T::Array[LobbyingDisclosureClient::Types::LobbyingActivity]
      const :registrant, LobbyingDisclosureClient::Types::Registrant
      const :dt_posted, DateTime
      const :expenses, T.nilable(BigDecimal)
      const :expenses_method, T.nilable(LobbyingDisclosureClient::Enums::ExpensesMethod)
      const :expenses_method_display, T.nilable(String)
      const :filing_document_content_type, String
      const :filing_document_url, String
      const :filing_period, LobbyingDisclosureClient::Enums::FilingPeriod
      const :filing_period_display, String
      const :filing_type, LobbyingDisclosureClient::Enums::FilingType
      const :filing_type_display, String
      const :filing_uuid, String
      const :filing_year, Integer
      const :income, T.nilable(BigDecimal)
      const :posted_by_name, T.nilable(String)
      const :registrant_address_1, T.nilable(String)
      const :registrant_address_2, T.nilable(String)
      const :registrant_city, T.nilable(String)
      const :registrant_country, String
      const :registrant_different_address, T.nilable(T::Boolean)
      const :registrant_ppb_country, T.nilable(String)
      const :registrant_state, LobbyingDisclosureClient::Enums::State
      const :registrant_zip, T.nilable(String)
      const :termination_date, T.nilable(Date)
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
            'dt_posted' => hash['dt_posted'] ? DateTime.parse(hash['dt_posted']) : nil,
            'expenses' => hash['expenses']&.to_d,
            'income' => hash['income']&.to_d,
            'termination_date' => hash['termination_date'] ? Date.parse(hash['termination_date']) : nil
          ),
          strict
        )
      end
    end
  end
end
