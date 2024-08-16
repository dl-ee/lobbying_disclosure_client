# frozen_string_literal: true

require_relative 'lib/lobbying_disclosure_client/version'

Gem::Specification.new do |spec|
  spec.name = 'lobbying_disclosure_client'
  spec.version = LobbyingDisclosureClient::VERSION

  spec.authors = ['Daniel Lee']
  spec.email = ['daniel.david.lee@pm.me']

  spec.summary = 'A Ruby wrapper for the Lobbying Disclosure REST API'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.3.4'

  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'sorbet-runtime'

  spec.metadata['rubygems_mfa_required'] = 'true'
end
