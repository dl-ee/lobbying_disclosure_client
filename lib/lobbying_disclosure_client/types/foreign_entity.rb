# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Types
    class ForeignEntity < T::Struct
      extend T::Sig

      const :address, T.nilable(String)
      const :city, T.nilable(String)
      const :contribution, T.nilable(BigDecimal)
      const :country, LobbyingDisclosureClient::Enums::Country
      const :country_display, String
      const :name, String
      const :ownership_percentage, T.nilable(BigDecimal)
      const :ppb_city, T.nilable(String)
      const :ppb_country, LobbyingDisclosureClient::Enums::Country
      const :ppb_country_display, String
      const :ppb_state, T.nilable(LobbyingDisclosureClient::Enums::State)
      const :ppb_state_display, String
      const :state, T.nilable(LobbyingDisclosureClient::Enums::State)
      const :state_display, String

      sig do
        params(
          hash: T::Hash[String, T.untyped],
          strict: T::Boolean
        ).returns(T.self_type)
      end
      def deserialize(hash, strict = false)
        super(
          hash.merge(
            'contribution' => hash['contribution']&.to_d,
            'ownership_percentage' => hash['ownership_percentage']&.to_d
          ),
          strict
        )
      end
    end
  end
end
