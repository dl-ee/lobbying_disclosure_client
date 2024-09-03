# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Auth
    module Password
      class Reset
        class Confirm
          extend T::Sig

          class Input < T::Struct
            const :new_password1, String
            const :new_password2, String
            const :uid, String
            const :token, String
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
            response = client.post(LobbyingDisclosureClient::Enums::Route::Auth_Password_Reset_Confirm, input.serialize)

            Output.new(
              detail: T.must(response['detail'])
            )
          end
        end
      end
    end
  end
end
