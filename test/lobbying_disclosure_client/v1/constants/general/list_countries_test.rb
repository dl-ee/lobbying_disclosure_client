# typed: false
# frozen_string_literal: true

require 'test_helper'

class ListCountriesTest < Minitest::Test
  def test_list_countries
    VCR.use_cassette('/v1/constants/general/list_countries') do
      output = LobbyingDisclosureClient::V1::Constants::General::ListCountries.call

      output.each do |constant|
        assert_instance_of(LobbyingDisclosureClient::Types::Constant, constant)
      end
    end
  end
end
