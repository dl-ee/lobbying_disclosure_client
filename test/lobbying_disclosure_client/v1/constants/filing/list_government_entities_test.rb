# typed: false
# frozen_string_literal: true

require 'test_helper'

class ListGovernmentEntitiesTest < Minitest::Test
  def test_list_government_entities
    VCR.use_cassette('/v1/constants/filing/list_government_entities') do
      output = LobbyingDisclosureClient::V1::Constants::Filing::ListGovernmentEntities.call

      output.each do |constant|
        assert_instance_of(LobbyingDisclosureClient::Types::GovernmentEntity, constant)
      end
    end
  end
end
