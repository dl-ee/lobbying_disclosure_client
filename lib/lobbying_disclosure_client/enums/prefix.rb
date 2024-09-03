# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Enums
    class Prefix < T::Enum
      enums do
        Dr = new('dr')
        Mr = new('mr')
        Mrs = new('mrs')
        Ms = new('ms')
        Mx = new('mx')
        Ptr = new('ptr')
        Rev = new('rev')
      end
    end
  end
end
