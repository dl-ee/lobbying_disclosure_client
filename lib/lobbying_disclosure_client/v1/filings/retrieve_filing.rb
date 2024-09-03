# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  class V1
    module Filings
      class RetrieveFiling
        extend T::Sig

        class Input < T::Struct
          const :filing_uuid, String
        end

        class Output < T::Struct
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
        end

        sig do
          params(
            input: Input
          ).returns(Output)
        end
        def self.call(input:)
          client = Client.new

          Output.from_hash!(
            client.get(
              LobbyingDisclosureClient::Enums::Route::V1_Filings_RetrieveFiling,
              path_params: [input.filing_uuid]
            )
          )
        end
      end
    end
  end
end
