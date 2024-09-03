# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Types
    class LobbyingActivity < T::Struct
      const :description, T.nilable(String)
      const :foreign_entity_issues, T.nilable(String)
      const :general_issue_code, LobbyingDisclosureClient::Enums::GeneralIssueCode
      const :general_issue_code_display, String
      const :government_entities, T::Array[LobbyingDisclosureClient::Types::GovernmentEntity]
      const :lobbyists, T::Array[LobbyingDisclosureClient::Types::LobbyistForLobbyingActivity]
    end
  end
end
