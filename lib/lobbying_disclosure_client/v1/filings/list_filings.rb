# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  class V1
    module Filings
      class ListFilings
        extend T::Sig

        class Input < T::Struct
          include LobbyingDisclosureClient::Interfaces::ListEndpointInput

          const :affiliated_organization_country, T.nilable(LobbyingDisclosureClient::Enums::Country)
          const :affiliated_organization_listed_indicator, T.nilable(T::Boolean)
          const :affiliated_organization_name, T.nilable(String)
          const :client_country, T.nilable(LobbyingDisclosureClient::Enums::Country)
          const :client_id, T.nilable(Integer)
          const :client_name, T.nilable(String)
          const :client_ppb_country, T.nilable(LobbyingDisclosureClient::Enums::Country)
          const :client_ppb_state, T.nilable(LobbyingDisclosureClient::Enums::State)
          const :client_state, T.nilable(LobbyingDisclosureClient::Enums::State)
          const :filing_amount_reported_max, T.nilable(BigDecimal)
          const :filing_amount_reported_min, T.nilable(BigDecimal)
          const :filing_dt_posted_after, T.nilable(DateTime)
          const :filing_dt_posted_before, T.nilable(DateTime)
          const :filing_period, T.nilable(LobbyingDisclosureClient::Enums::FilingPeriod)
          const :filing_specific_lobbying_issues, T.nilable(String)
          const :filing_type, T.nilable(LobbyingDisclosureClient::Enums::FilingType)
          const :filing_uuid, T.nilable(String)
          const :filing_year, T.nilable(Integer)
          const :foreign_entity_country, T.nilable(LobbyingDisclosureClient::Enums::Country)
          const :foreign_entity_listed_indicator, T.nilable(T::Boolean)
          const :foreign_entity_name, T.nilable(String)
          const :foreign_entity_ownership_percentage_max, T.nilable(String)
          const :foreign_entity_ownership_percentage_min, T.nilable(String)
          const :foreign_entity_ppb_country, T.nilable(LobbyingDisclosureClient::Enums::Country)
          const :lobbyist_conviction_date_range_after, T.nilable(Date)
          const :lobbyist_conviction_date_range_before, T.nilable(Date)
          const :lobbyist_conviction_disclosure, T.nilable(String)
          const :lobbyist_conviction_disclosure_indicator, T.nilable(T::Boolean)
          const :lobbyist_covered_position, T.nilable(String)
          const :lobbyist_covered_position_indicator, T.nilable(T::Boolean)
          const :lobbyist_id, T.nilable(Integer)
          const :lobbyist_name, T.nilable(String)
          const :ordering, T.nilable(String)
          const :page, T.nilable(Integer)
          const :page_size, T.nilable(Integer)
          const :registrant_country, T.nilable(LobbyingDisclosureClient::Enums::Country)
          const :registrant_id, T.nilable(Integer)
          const :registrant_name, T.nilable(String)
          const :registrant_ppb_country, T.nilable(LobbyingDisclosureClient::Enums::Country)
        end

        class Output < T::Struct
          include LobbyingDisclosureClient::Interfaces::ListEndpointOutput

          const :count, Integer
          const :next, T.nilable(String)
          const :previous, T.nilable(String)
          const :results, T::Array[LobbyingDisclosureClient::Types::Filing]
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
              LobbyingDisclosureClient::Enums::Route::V1_Filings_ListFilings,
              query_params: input.serialize.compact
            )
          )
        end
      end
    end
  end
end
