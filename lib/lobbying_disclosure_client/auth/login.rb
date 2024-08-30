# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Auth
    class Login
      extend T::Sig

      class Input < T::Struct
        const :username, String
        const :password, String
      end

      class Output < T::Struct
        const :key, String
      end

      sig do
        params(
          input: Input
        ).returns(Output)
      end
      def self.call(input:)
        client = Client.new
        response = client.post(LobbyingDisclosureClient::Route::Auth_Login, input.serialize)

        Output.new(
          key: T.must(response['key'])
        )
      end
    end
  end
end
