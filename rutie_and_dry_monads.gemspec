# frozen_string_literal: true

require File.expand_path('../lib/rutie_and_dry_monads/version', __FILE__)

Gem::Specification.new do |s|
  s.name = 'rutie_and_dry_monads'
  s.version = RutieAndDryMonads::VERSION
  s.authors = ['Mikey Hoy']
  s.email = ['mjh@mjhoy.com']
  s.summary = 'Playing with Rutie and Dry-monads'
  s.description = 'Playing with Rutie and Dry-monads'
  s.license = 'MIT OR Apache-2.0'

  s.add_dependency 'dry-monads', '~> 1.4'
  s.add_dependency 'rutie', '~> 0.0.4'

  s.add_development_dependency 'bundler', '>= 2.3.7'
  s.add_development_dependency 'minitest', '~> 5.11'

  s.files = `git ls-files`.split("\n")
  s.require_path = 'lib'
end
