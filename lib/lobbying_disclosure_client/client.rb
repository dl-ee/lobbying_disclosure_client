# typed: strict
# frozen_string_literal: true

require 'faraday'

module LobbyingDisclosureClient
  class Client
    extend T::Sig

    sig do
      params(
        route: LobbyingDisclosureClient::Enums::Route,
        path_params: T::Array[T.any(String, Integer)],
        query_params: T::Hash[String, T.untyped]
      ).returns(
        T.untyped
      )
    end
    def get(route, path_params: [], query_params: {})
      handle_response(
        connection.get(
          route.to_full_api_path(path_params:),
          query_params
        )
      )
    end

    sig do
      params(
        route: LobbyingDisclosureClient::Enums::Route,
        body: T::Hash[String, String]
      ).returns(
        T::Hash[String, String]
      )
    end
    def post(route, body = {})
      handle_response(
        connection.post(
          route.to_full_api_path,
          body.to_json
        )
      )
    end

    private

    sig do
      returns(Faraday::Connection)
    end
    def connection
      Faraday.new(
        headers: build_headers
      ) do |conn|
        conn.adapter :net_http
      end
    end

    sig do
      returns(T::Hash[String, String])
    end
    def build_headers
      headers = { 'Content-Type' => 'application/json' }

      # The Lobbying Disclosure API does allow unauthenticated ("anonymous") requests,
      # though they are aggressively rate-limited.

      headers['Authorization'] = "Token #{LobbyingDisclosureClient.api_key}" if LobbyingDisclosureClient.api_key

      headers
    end

    sig do
      params(
        response: T.untyped
      ).returns(T.untyped)
    end
    def handle_response(response)
      response_code = response.status
      response_body = JSON.parse(response.body)

      case response_code
      when 200
        response_body
      when 400
        # The API docs specify two distinct response schemas for 400 errors:
        #   1. { "detail": "..." }
        #   2. { "registrant_id": ["Enter a number."], "another_field": ["Another error message"] }
        # Collapsing these into one error type for now.

        raise LobbyingDisclosureClient::Errors::BadRequestError, response_body
      when 401
        raise LobbyingDisclosureClient::Errors::InvalidApiKeyError, response_body['detail']
      when 404
        raise LobbyingDisclosureClient::Errors::NotFoundError, response_body['detail']
      when 405
        raise LobbyingDisclosureClient::Errors::UnsupportedHttpMethodError, response_body['detail']
      when 429
        raise LobbyingDisclosureClient::Errors::RequestThrottledError.new(
          response_body['detail'],
          response.headers['Retry-After']
        )
      else
        raise LobbyingDisclosureClient::Errors::UnknownError,
              "Got #{response_code}. Response: #{response_body}"
      end
    end
  end
end
