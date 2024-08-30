# typed: false
# frozen_string_literal: true

require 'test_helper'

class ConfirmTest < Minitest::Test
  def test_reset
    VCR.use_cassette('/auth/password/reset/confirm') do
      output = LobbyingDisclosureClient::Auth::Password::Reset::Confirm.call(
        input: LobbyingDisclosureClient::Auth::Password::Reset::Confirm::Input.new(
          new_password1: '535a9a3c-48aa-45a3-a3a1-5f50a3b78e1c',
          new_password2: '535a9a3c-48aa-45a3-a3a1-5f50a3b78e1c',
          uid: '1bee6994-c785-4208-84df-6a7a7bff0130',
          token: 'bb865a67-0bf6-452b-a644-100cc13ba7c8'
        )
      )

      assert_equal('Password has been reset with the new password.', output.detail)
    end
  end
end
