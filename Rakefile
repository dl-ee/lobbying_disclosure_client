# frozen_string_literal: true

require 'rake/testtask'
require 'lobbying_disclosure_client'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList['test/**/*_test.rb']
end

task default: :test

desc 'Validate enums against values from the API'
task :validate_constants do
  require_relative 'lib/lobbying_disclosure_client/util/constants_validator'
  LobbyingDisclosureClient::Util::ConstantsValidator.validate!
end
