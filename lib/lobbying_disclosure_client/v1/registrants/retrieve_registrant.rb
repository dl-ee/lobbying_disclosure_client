# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  class V1
    module Registrants
      class RetrieveRegistrant
        extend T::Sig

        class Input < T::Struct
          const :id, Integer
        end

        Output = T.type_alias do
          LobbyingDisclosureClient::Types::Registrant
        end

        sig do
          params(
            input: Input
          ).returns(Output)
        end
        def self.call(input:)
          client = Client.new

          LobbyingDisclosureClient::Types::Registrant.from_hash!(
            client.get(
              LobbyingDisclosureClient::Enums::Route::V1_Registrants_RetrieveRegistrant,
              path_params: [input.id]
            )
          )
        end
      end
    end
  end
end
