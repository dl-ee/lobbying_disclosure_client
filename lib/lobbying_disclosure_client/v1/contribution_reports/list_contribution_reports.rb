# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  class V1
    module ContributionReports
      class ListContributionReports
        extend T::Sig

        class Input < T::Struct
          include LobbyingDisclosureClient::Interfaces::ListEndpointInput

          const :contribution_amount_max, T.nilable(BigDecimal)
          const :contribution_amount_min, T.nilable(BigDecimal)
          const :contribution_contributor, T.nilable(String)
          const :contribution_date_after, T.nilable(Date)
          const :contribution_date_before, T.nilable(Date)
          const :contribution_honoree, T.nilable(String)
          const :contribution_payee, T.nilable(String)
          const :contribution_type, T.nilable(LobbyingDisclosureClient::Enums::ContributionType)
          const :filing_dt_posted_after, T.nilable(DateTime)
          const :filing_dt_posted_before, T.nilable(DateTime)
          const :filing_period, T.nilable(LobbyingDisclosureClient::Enums::FilingPeriod)
          const :filing_type, T.nilable(LobbyingDisclosureClient::Enums::FilingType)
          const :filing_uuid, T.nilable(String)
          const :filing_year, T.nilable(Integer)
          const :lobbyist_exclude, T.nilable(T::Boolean)
          const :lobbyist_id, T.nilable(Integer)
          const :lobbyist_name, T.nilable(String)
          const :ordering, T.nilable(String)
          const :page, T.nilable(Integer)
          const :page_size, T.nilable(Integer)
          const :registrant_id, T.nilable(Integer)
          const :registrant_name, T.nilable(String)
        end

        class Output < T::Struct
          const :count, Integer
          const :next, T.nilable(String)
          const :previous, T.nilable(String)
          const :results, T::Array[LobbyingDisclosureClient::Types::ContributionReport]
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
              LobbyingDisclosureClient::Enums::Route::V1_Contributions_ListContributionReports,
              query_params: input.serialize.compact
            )
          )
        end
      end
    end
  end
end
