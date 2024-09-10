# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  class V1
    module Constants
      module Filing
        class ListGovernmentEntities
          extend T::Sig

          sig do
            returns(T::Array[LobbyingDisclosureClient::Types::GovernmentEntity])
          end
          def self.call
            client = Client.new
            client.get(
              LobbyingDisclosureClient::Enums::Route::V1_Constants_Filing_GovernmentEntities
            ).map do |constant|
              LobbyingDisclosureClient::Types::GovernmentEntity.from_hash!(constant)
            end
          end
        end
      end
    end
  end
end
