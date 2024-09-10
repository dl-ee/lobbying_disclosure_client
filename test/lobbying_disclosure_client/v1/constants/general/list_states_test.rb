# typed: false
# frozen_string_literal: true

require 'test_helper'

class ListStatesTest < Minitest::Test
  def test_list_states
    VCR.use_cassette('/v1/constants/general/list_states') do
      output = LobbyingDisclosureClient::V1::Constants::General::ListStates.call

      output.each do |constant|
        assert_instance_of(LobbyingDisclosureClient::Types::Constant, constant)
      end
    end
  end
end
