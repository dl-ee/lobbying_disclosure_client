# typed: strict
# frozen_string_literal: true

require 'bundler/setup'
require 'minitest/autorun'
require 'vcr'
require 'webmock/minitest'

require 'lobbying_disclosure_client'

VCR.configure do |c|
  c.cassette_library_dir = 'test/cassettes'
  c.hook_into :webmock
end
