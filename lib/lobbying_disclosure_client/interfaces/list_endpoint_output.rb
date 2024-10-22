# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Interfaces
    module ListEndpointOutput
      extend T::Generic
      extend T::Sig

      interface!

      sig do
        abstract.returns(Integer)
      end
      def count; end

      sig do
        abstract.returns(T.nilable(String))
      end
      def next; end

      sig do
        abstract.returns(T.nilable(String))
      end
      def previous; end

      sig do
        abstract.returns(T::Array[T.untyped])
      end
      def results; end
    end
  end
end
