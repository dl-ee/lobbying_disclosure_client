# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Types
    class ConvictionDisclosure < T::Struct
      extend T::Sig

      const :date, Date
      const :description, String
      const :lobbyist, LobbyingDisclosureClient::Types::Lobbyist

      sig do
        params(
          hash: T::Hash[String, T.untyped],
          strict: T::Boolean
        ).returns(T.self_type)
      end
      def deserialize(hash, strict = false)
        super(
          hash.merge(
            'date' => hash['date'] ? Date.parse(hash['date']) : nil
          ),
          strict
        )
      end
    end
  end
end
