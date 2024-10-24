# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Enums
    class ContributionType < T::Enum
      extend T::Sig
      include LobbyingDisclosureClient::Interfaces::ValidatableEnum

      enums do
        Feca = new('feca')
        HonoraryExpenses = new('he')
        MeetingExpenses = new('me')
        PresidentialLibraryExpenses = new('ple')
        PresidentialInauguralCommittee = new('pic')
      end

      sig do
        override.returns(String)
      end
      def name
        case self
        when Feca then 'FECA'
        when HonoraryExpenses then 'Honorary Expenses'
        when MeetingExpenses then 'Meeting Expenses'
        when PresidentialLibraryExpenses then 'Presidential Library Expenses'
        when PresidentialInauguralCommittee then 'Presidential Inaugural Committee'
        else
          T.absurd(self)
        end
      end
    end
  end
end
