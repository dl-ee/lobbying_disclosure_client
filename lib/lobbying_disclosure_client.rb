# typed: strict
# frozen_string_literal: true

require 'sorbet-runtime'

require_relative 'lobbying_disclosure_client/auth'
require_relative 'lobbying_disclosure_client/auth/login'
require_relative 'lobbying_disclosure_client/auth/password'
require_relative 'lobbying_disclosure_client/auth/password/reset'
require_relative 'lobbying_disclosure_client/auth/password/reset/confirm'

require_relative 'lobbying_disclosure_client/client'
require_relative 'lobbying_disclosure_client/v1'

module LobbyingDisclosureClient
  class << self
    extend T::Sig

    @api_key = T.let(nil, T.nilable(String))

    sig { returns(T.nilable(String)) }
    attr_accessor :api_key
  end
end
