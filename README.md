# Lobbying Disclosure Client

This gem acts as a client for the Lobbying Disclosure Client REST API. See [the full API documentation](https://lda.senate.gov/api/redoc/v1/) for more detail.

## Installation

Add to your Gemfile:

```
gem 'lobbying_disclosure_client'
```

```
bundle install
```

## Usage

### Using an API key

The API _does_ allow for "anonymous" requests (i.e. without an API key), but the rate limit is pretty unforgiving. It's very easy to [register for one](https://lda.senate.gov/api/register/). You can configure the gem to use your key as such:

```ruby
LobbyingDisclosureClient.api_key = ENV['YOUR_API_KEY']
```

### Supported endpoints

The gem supports all V1 endpoints, which can be called as such:

```ruby
LobbyingDisclosureClient::V1::Clients::ListClients.call(...)
LobbyingDisclosureClient::V1::Clients::RetrieveClient.call(...)

LobbyingDisclosureClient::V1::ContributionReports::ListContributionReports.call(...)
LobbyingDisclosureClient::V1::ContributionReports::RetrieveContributionReport.call(...)

LobbyingDisclosureClient::V1::Filings::ListFilings.call(...)
LobbyingDisclosureClient::V1::Filings::RetrieveFiling.call(...)

LobbyingDisclosureClient::V1::Lobbyists::ListLobbyists.call(...)
LobbyingDisclosureClient::V1::Lobbyists::RetrieveLobbyist.call(...)

LobbyingDisclosureClient::V1::Registrants::ListRegistrants.call(...)
LobbyingDisclosureClient::V1::Registrants::RetrieveRegistrant.call(...)

# Lists all endpoints
LobbyingDisclosureClient::V1.call
```

Endpoints namespaced under `/v1/constants` return valid values for various enums. The Ruby representations of these enums are automatically validated against the live API as part of the CI pipeline.

```ruby
LobbyingDisclosureClient::V1::Constants::Contribution::ListContributionItemTypes.call

LobbyingDisclosureClient::V1::Constants::Filing::ListFilingTypes.call
LobbyingDisclosureClient::V1::Constants::Filing::ListGovernmentEntities.call
LobbyingDisclosureClient::V1::Constants::Filing::ListLobbyingActivityGeneralIssues.call

LobbyingDisclosureClient::V1::Constants::General::ListCountries.call
LobbyingDisclosureClient::V1::Constants::General::ListStates.call

LobbyingDisclosureClient::V1::Constants::Lobbyist::ListLobbyistPrefixes.call
LobbyingDisclosureClient::V1::Constants::Lobbyist::ListLobbyistSuffixes.call
```

There are also a few endpoints related to auth/login.

```ruby
# Given username/password, returns an API key
LobbyingDisclosureClient::Auth::Login.call(...)

# Sends a password reset email
LobbyingDisclosureClient::Auth::Password::Reset.call(...)

# Sets a new password, given a UID from the password reset email
LobbyingDisclosureClient::Auth::Password::Reset::Confirm.call(...)
```