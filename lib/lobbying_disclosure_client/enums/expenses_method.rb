# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Enums
    class ExpensesMethod < T::Enum
      enums do
        A = new('a')
        B = new('b')
        C = new('c')
      end
    end
  end
end
