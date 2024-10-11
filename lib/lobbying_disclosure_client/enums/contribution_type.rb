# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Enums
    class ContributionType < T::Enum
      enums do
        Feca = new('feca')
        HonoraryExpenses = new('he')
        MeetingExpenses = new('me')
        PresidentialLibraryExpenses = new('ple')
        PresidentialInauguralCommittee = new('pic')
      end
    end
  end
end
