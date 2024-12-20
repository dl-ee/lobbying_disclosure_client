# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  class V1
    extend T::Sig

    sig do
      returns(T::Hash[String, String])
    end
    def self.call
      client = Client.new
      client.get(LobbyingDisclosureClient::Enums::Route::V1)
    end
  end
end
