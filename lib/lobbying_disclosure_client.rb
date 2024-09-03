# typed: strict
# frozen_string_literal: true

require 'bigdecimal'
require 'sorbet-runtime'

require_relative 'lobbying_disclosure_client/auth'
require_relative 'lobbying_disclosure_client/auth/login'
require_relative 'lobbying_disclosure_client/auth/password'
require_relative 'lobbying_disclosure_client/auth/password/reset'
require_relative 'lobbying_disclosure_client/auth/password/reset/confirm'

require_relative 'lobbying_disclosure_client/client'

require_relative 'lobbying_disclosure_client/enums'
require_relative 'lobbying_disclosure_client/enums/country'
require_relative 'lobbying_disclosure_client/enums/expenses_method'
require_relative 'lobbying_disclosure_client/enums/filing_period'
require_relative 'lobbying_disclosure_client/enums/filing_type'
require_relative 'lobbying_disclosure_client/enums/general_issue_code'
require_relative 'lobbying_disclosure_client/enums/prefix'
require_relative 'lobbying_disclosure_client/enums/route'
require_relative 'lobbying_disclosure_client/enums/state'
require_relative 'lobbying_disclosure_client/enums/suffix'

require_relative 'lobbying_disclosure_client/types'
require_relative 'lobbying_disclosure_client/types/affiliated_organization'
require_relative 'lobbying_disclosure_client/types/government_entity'
require_relative 'lobbying_disclosure_client/types/lobbyist'
require_relative 'lobbying_disclosure_client/types/lobbyist_for_lobbying_activity'
require_relative 'lobbying_disclosure_client/types/lobbying_activity'
require_relative 'lobbying_disclosure_client/types/client'
require_relative 'lobbying_disclosure_client/types/conviction_disclosure'
require_relative 'lobbying_disclosure_client/types/foreign_entity'
require_relative 'lobbying_disclosure_client/types/registrant'

require_relative 'lobbying_disclosure_client/v1'

require_relative 'lobbying_disclosure_client/v1/filings'
require_relative 'lobbying_disclosure_client/v1/filings/retrieve_filing'

module LobbyingDisclosureClient
  class << self
    extend T::Sig

    @api_key = T.let(nil, T.nilable(String))

    sig { returns(T.nilable(String)) }
    attr_accessor :api_key
  end
end
