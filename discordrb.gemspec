# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'discordrb/version'

Gem::Specification.new do |spec|
  spec.name          = 'discordrb'
  spec.version       = Discordrb::VERSION
  spec.authors       = %w[meew0 swarley]
  spec.email         = ['']

  spec.summary       = 'Discord API for Ruby'
  spec.description   = 'A Ruby implementation of the Discord (https://discord.com) API.'
  spec.homepage      = 'https://github.com/shardlab/discordrb'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|examples)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.metadata = {
    'changelog_uri' => 'https://github.com/shardlab/discordrb/blob/main/CHANGELOG.md',
    'rubygems_mfa_required' => 'true'
  }
  spec.require_paths = ['lib']

  spec.add_dependency 'ffi', '>= 1.9.24'
  spec.add_dependency 'opus-ruby'
  spec.add_dependency 'rest-client', '>= 2.0.0'
  spec.add_dependency 'websocket-client-simple', '>= 0.3.0'

  spec.required_ruby_version = '>= 2.7'

  spec.add_development_dependency 'bundler', '>= 1.10', '< 3'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'redcarpet', '~> 3.5.0' # YARD markdown formatting
  spec.add_development_dependency 'rspec', '~> 3.11.0'
  spec.add_development_dependency 'rspec_junit_formatter', '~> 0.5.1'
  spec.add_development_dependency 'rspec-prof', '~> 0.0.7'
  spec.add_development_dependency 'rubocop', '~> 1.36.0'
  spec.add_development_dependency 'rubocop-performance', '~> 1.0'
  spec.add_development_dependency 'rubocop-rake', '~> 0.6.0'
  spec.add_development_dependency 'simplecov', '~> 0.21.0'
  spec.add_development_dependency 'yard', '~> 0.9.9'
end
