# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Enums
    class Prefix < T::Enum
      extend T::Sig
      include LobbyingDisclosureClient::Interfaces::ValidatableEnum

      enums do
        Dr = new('dr')
        Mr = new('mr')
        Mrs = new('mrs')
        Ms = new('ms')
        Mx = new('mx')
        Ptr = new('ptr')
        Rev = new('rev')
      end

      sig do
        override.returns(String)
      end
      def name
        case self
        when Dr then 'DR.'
        when Mr then 'MR.'
        when Mrs then 'MRS.'
        when Ms then 'MS.'
        when Mx then 'MX.'
        when Ptr then 'PTR.'
        when Rev then 'REV.'
        else
          T.absurd(self)
        end
      end
    end
  end
end
