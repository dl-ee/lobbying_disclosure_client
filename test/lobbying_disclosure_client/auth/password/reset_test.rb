# typed: false
# frozen_string_literal: true

require 'test_helper'

class ResetTest < Minitest::Test
  def test_reset
    VCR.use_cassette('/auth/password/reset') do
      output = LobbyingDisclosureClient::Auth::Password::Reset.call(
        input: LobbyingDisclosureClient::Auth::Password::Reset::Input.new(
          email: 'user@gmail.com'
        )
      )

      assert_equal('Password reset e-mail has been sent.', output.detail)
    end
  end
end
