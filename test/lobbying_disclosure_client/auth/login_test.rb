# typed: false
# frozen_string_literal: true

require 'test_helper'

class LoginTest < Minitest::Test
  def test_login
    VCR.use_cassette('/login') do
      output = LobbyingDisclosureClient::Auth::Login.call(
        input: LobbyingDisclosureClient::Auth::Login::Input.new(
          username: 'user',
          password: 'password'
        )
      )

      assert_instance_of(String, output.key)
    end
  end
end
