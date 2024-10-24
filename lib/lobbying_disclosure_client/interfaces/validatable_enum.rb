# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Interfaces
    module ValidatableEnum
      extend T::Generic
      extend T::Sig

      interface!

      sig do
        abstract.returns(String)
      end
      def name; end
    end
  end
end
