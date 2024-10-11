# typed: false
# frozen_string_literal: true

require 'test_helper'

class RetrieveContributionReportTest < Minitest::Test
  def test_retrieve_contribution_report
    VCR.use_cassette('/v1/contribution_reports/retrieve_contribution_report') do
      filing_uuid = 'b523a31f-91d3-497f-95dd-e28bd7eb541f'

      output = LobbyingDisclosureClient::V1::ContributionReports::RetrieveContributionReport.call(
        input: LobbyingDisclosureClient::V1::ContributionReports::RetrieveContributionReport::Input.new(
          filing_uuid:
        )
      )

      assert_equal(filing_uuid, output.filing_uuid)
    end
  end
end
