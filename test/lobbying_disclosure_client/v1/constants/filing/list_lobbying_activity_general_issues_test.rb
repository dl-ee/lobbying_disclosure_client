# typed: false
# frozen_string_literal: true

require 'test_helper'

class ListLobbyingActivityGeneralIssuesTest < Minitest::Test
  def test_list_lobbying_activity_general_issues
    VCR.use_cassette('/v1/constants/filing/list_lobbying_activity_general_issues') do
      output = LobbyingDisclosureClient::V1::Constants::Filing::ListLobbyingActivityGeneralIssues.call

      output.each do |constant|
        assert_instance_of(LobbyingDisclosureClient::Types::Constant, constant)
      end
    end
  end
end
