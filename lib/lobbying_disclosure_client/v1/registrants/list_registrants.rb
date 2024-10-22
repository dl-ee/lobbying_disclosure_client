# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  class V1
    module Registrants
      class ListRegistrants
        extend T::Sig

        class Input < T::Struct
          include LobbyingDisclosureClient::Interfaces::ListEndpointInput

          const :country, T.nilable(LobbyingDisclosureClient::Enums::Country)
          const :dt_updated_after, T.nilable(DateTime)
          const :dt_updated_before, T.nilable(DateTime)
          const :id, T.nilable(Integer)
          const :ordering, T.nilable(String)
          const :page, T.nilable(Integer)
          const :page_size, T.nilable(Integer)
          const :ppb_country, T.nilable(LobbyingDisclosureClient::Enums::Country)
          const :registrant_name, T.nilable(String)
          const :state, T.nilable(LobbyingDisclosureClient::Enums::State)
        end

        class Output < T::Struct
          const :count, Integer
          const :next, T.nilable(String)
          const :previous, T.nilable(String)
          const :results, T::Array[LobbyingDisclosureClient::Types::Registrant]
        end

        sig do
          params(
            input: Input
          ).returns(Output)
        end
        def self.call(input:)
          client = Client.new

          Output.from_hash!(
            client.get(
              LobbyingDisclosureClient::Enums::Route::V1_Registrants_ListRegistrants,
              query_params: input.serialize.compact
            )
          )
        end
      end
    end
  end
end
