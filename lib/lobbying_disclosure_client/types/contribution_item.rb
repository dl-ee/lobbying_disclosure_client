# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Types
    class ContributionItem < T::Struct
      extend T::Sig

      const :amount, T.nilable(BigDecimal)
      const :contribution_type, LobbyingDisclosureClient::Enums::ContributionType
      const :contribution_type_display, String
      const :contributor_name, String
      const :date, Date
      const :honoree_name, String
      const :payee_name, String

      sig do
        params(
          hash: T::Hash[String, T.untyped],
          strict: T::Boolean
        ).returns(T.self_type)
      end
      def deserialize(hash, strict = false)
        super(
          hash.merge(
            'amount' => hash['amount']&.to_d,
            'date' => hash['date'] ? Date.parse(hash['date']) : nil
          ),
          strict
        )
      end
    end
  end
end
