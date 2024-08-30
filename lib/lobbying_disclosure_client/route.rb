# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  class Route < T::Enum
    extend T::Sig

    enums do
      V1 = new

      Auth_Login = new
      Auth_Password_Reset = new
      Auth_Password_Reset_Confirm = new
    end

    BASE_URL = T.let(
      'https://lda.senate.gov/api',
      String
    )
    private_constant(:BASE_URL)

    sig do
      returns(String)
    end
    def to_full_api_path
      path = case self
             when V1
               '/v1/'
             when Auth_Login
               '/auth/login/'
             when Auth_Password_Reset
               '/auth/password/reset/'
             when Auth_Password_Reset_Confirm
               '/auth/password/reset/confirm/'
             else
               T.absurd(self)
             end

      [BASE_URL, path].join
    end
  end
end
