# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Interfaces
    module ListEndpointInput
      extend T::Helpers
      extend T::Sig

      interface!

      sig do
        abstract.returns(T.nilable(String))
      end
      def ordering; end

      sig do
        abstract.returns(T.nilable(Integer))
      end
      def page; end

      sig do
        abstract.returns(T.nilable(Integer))
      end
      def page_size; end
    end
  end
end
