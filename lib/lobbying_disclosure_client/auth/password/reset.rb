# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Auth
    module Password
      class Reset
        extend T::Sig

        class Input < T::Struct
          const :email, String
        end

        class Output < T::Struct
          const :detail, String
        end

        sig do
          params(
            input: Input
          ).returns(Output)
        end
        def self.call(input:)
          client = Client.new
          response = client.post(LobbyingDisclosureClient::Route::Auth_Password_Reset, input.serialize)

          Output.new(
            detail: T.must(response['detail'])
          )
        end
      end
    end
  end
end
