# typed: strict
# frozen_string_literal: true

require 'faraday'

module LobbyingDisclosureClient
  class Client
    extend T::Sig

    BASE_URL = T.let(
      'https://lda.senate.gov/api',
      String
    )
    private_constant(:BASE_URL)

    sig do
      params(
        path: String,
        body: T::Hash[String, String]
      ).returns(
        T::Hash[String, String]
      )
    end
    def get(path, body = {})
      JSON.parse(
        connection.get(
          [BASE_URL, path].join,
          body
        ).body
      )
    end

    private

    sig do
      returns(Faraday::Connection)
    end
    def connection
      Faraday.new(
        headers: authorization_header
      ) do |conn|
        conn.response :raise_error
        conn.adapter :net_http
      end
    end

    sig do
      returns(T::Hash[String, String])
    end
    def authorization_header
      if LobbyingDisclosureClient.api_key
        {
          'Authorization' => "Token #{LobbyingDisclosureClient.api_key}"
        }
      else
        # The Lobbying Disclosure API allows unauthenticated ("anonymous") requests,
        # though they are aggressively rate-limited.
        {}
      end
    end
  end
end
