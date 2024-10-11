# typed: false
# frozen_string_literal: true

require 'test_helper'

class ListContributionReportsTest < Minitest::Test
  def test_list_contribution_reports
    VCR.use_cassette('/v1/contribution_reports/list_contribution_reports') do
      contribution_amount_min = BigDecimal(17)
      contribution_payee = 'Bernie Sanders'
      registrant_name = 'International Union of Painters and Allied Trades'

      output = LobbyingDisclosureClient::V1::ContributionReports::ListContributionReports.call(
        input: LobbyingDisclosureClient::V1::ContributionReports::ListContributionReports::Input.new(
          contribution_amount_min:,
          contribution_payee:,
          registrant_name:
        )
      )

      assert(
        output.results.map(&:registrant).all? do |registrant|
          registrant.name.downcase.include?(registrant_name.downcase)
        end
      )

      assert(
        output.results.flat_map(&:contribution_items).select do |contribution_item|
          contribution_item.payee_name.downcase.include?(contribution_payee.downcase)
        end.all? do |contribution_item|
          contribution_item.amount >= contribution_amount_min
        end
      )
    end
  end
end
