# typed: false
# frozen_string_literal: true

require 'test_helper'

class ListContributionItemTypesTest < Minitest::Test
  def test_list_contribution_item_types
    VCR.use_cassette('/v1/constants/contribution/list_contribution_item_types') do
      output = LobbyingDisclosureClient::V1::Constants::Contribution::ListContributionItemTypes.call

      output.each do |constant|
        assert_instance_of(LobbyingDisclosureClient::Types::Constant, constant)
      end
    end
  end
end
