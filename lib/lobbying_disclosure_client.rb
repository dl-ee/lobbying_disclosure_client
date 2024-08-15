# typed: strict
# frozen_string_literal: true

require 'sorbet-runtime'

class LobbyingDisclosureClient
  class << self
    extend T::Sig

    @api_key = T.let(nil, T.nilable(String))

    sig { returns(T.nilable(String)) }
    attr_accessor :api_key
  end
end
