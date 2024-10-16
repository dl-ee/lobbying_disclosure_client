# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Errors
    class RequestThrottledError < StandardError
      extend T::Sig

      sig do
        returns(Integer)
      end
      attr_reader :retry_after

      sig do
        params(
          message: String,
          retry_after: Integer
        ).void
      end
      def initialize(message, retry_after)
        super(message)
        @retry_after = retry_after
      end
    end
  end
end
