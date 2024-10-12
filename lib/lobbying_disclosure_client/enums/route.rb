# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Enums
    class Route < T::Enum
      extend T::Sig

      enums do
        V1 = new

        V1_Constants_Contribution_ItemTypes = new

        V1_Constants_Filing_ListFilingTypes = new
        V1_Constants_Filing_LobbyingActivityIssues = new
        V1_Constants_Filing_GovernmentEntities = new

        V1_Constants_General_Countries = new
        V1_Constants_General_States = new

        V1_Constants_Lobbyist_Prefixes = new
        V1_Constants_Lobbyist_Suffixes = new

        V1_Contributions_ListContributionReports = new
        V1_Contributions_RetrieveContributionReport = new

        V1_Filings_ListFilings = new
        V1_Filings_RetrieveFiling = new

        V1_Registrants_RetrieveRegistrant = new

        Auth_Login = new
        Auth_Password_Reset = new
        Auth_Password_Reset_Confirm = new
      end

      BASE_URL = T.let(
        'https://lda.senate.gov/api',
        String
      )
      private_constant(:BASE_URL)

      sig do
        params(
          path_params: T::Array[T.any(String, Integer)]
        ).returns(String)
      end
      def to_full_api_path(path_params: [])
        path = case self
               when V1
                 '/v1/'
               when V1_Constants_Contribution_ItemTypes
                 '/v1/constants/contribution/itemtypes/'
               when V1_Constants_Filing_ListFilingTypes
                 '/v1/constants/filing/filingtypes/'
               when V1_Constants_Filing_LobbyingActivityIssues
                 '/v1/constants/filing/lobbyingactivityissues/'
               when V1_Constants_Filing_GovernmentEntities
                 '/v1/constants/filing/governmententities/'
               when V1_Constants_General_Countries
                 '/v1/constants/general/countries/'
               when V1_Constants_General_States
                 '/v1/constants/general/states/'
               when V1_Constants_Lobbyist_Prefixes
                 '/v1/constants/lobbyist/prefixes/'
               when V1_Constants_Lobbyist_Suffixes
                 '/v1/constants/lobbyist/suffixes/'
               when V1_Contributions_ListContributionReports, V1_Contributions_RetrieveContributionReport
                 '/v1/contributions/'
               when V1_Filings_ListFilings, V1_Filings_RetrieveFiling
                 '/v1/filings/'
               when V1_Registrants_RetrieveRegistrant
                 '/v1/registrants/'
               when Auth_Login
                 '/auth/login/'
               when Auth_Password_Reset
                 '/auth/password/reset/'
               when Auth_Password_Reset_Confirm
                 '/auth/password/reset/confirm/'
               else
                 T.absurd(self)
               end

        if path_params.empty?
          [BASE_URL, path].join
        else
          "#{[BASE_URL, path].join}#{path_params.join('/')}/"
        end
      end
    end
  end
end
