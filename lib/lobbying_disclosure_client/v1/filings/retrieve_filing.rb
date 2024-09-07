# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  class V1
    module Filings
      class RetrieveFiling
        extend T::Sig

        class Input < T::Struct
          const :filing_uuid, String
        end

        Output = T.type_alias do
          LobbyingDisclosureClient::Types::Filing
        end

        sig do
          params(
            input: Input
          ).returns(Output)
        end
        def self.call(input:)
          client = Client.new

          LobbyingDisclosureClient::Types::Filing.from_hash!(
            client.get(
              LobbyingDisclosureClient::Enums::Route::V1_Filings_RetrieveFiling,
              path_params: [input.filing_uuid]
            )
          )
        end
      end
    end
  end
end
