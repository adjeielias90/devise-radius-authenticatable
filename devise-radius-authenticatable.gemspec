# -*- encoding: utf-8 -*-

require File.expand_path("../lib/devise/radius_authenticatable/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "devise-radius-authenticatable"
  s.version     = Devise::RadiusAuthenticatable::VERSION.dup
  s.platform    = Gem::Platform::RUBY
  s.summary     = "Devise extension to allow authentication via Radius"
  s.email       = "cbascom@gmail.com"
  s.homepage    = "http://github.com/cbascom/devise-radius-authenticatable"
  s.description = "A new authentication strategy named radius_authenticatable is added to the list of warden strategies when the model requests it.  The radius server information is configured through the devise initializer.  When a user attempts to authenticate via radius, the radiustar gem is used to perform the authentication with the radius server.  This authentication strategy can be used in place of the database_authenticatable or alongside it depending on the needs of the application."
  s.authors     = ['Calvin Bascom']
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency('devise')
  s.add_dependency('radiustar')

  s.add_development_dependency('rake')
  s.add_development_dependency('rails')
  s.add_development_dependency('jquery-rails')
  s.add_development_dependency('sqlite3')
  s.add_development_dependency('rspec')
  s.add_development_dependency('rspec-rails')
  s.add_development_dependency('factory_girl')
  s.add_development_dependency('capybara')
  s.add_development_dependency('launchy')
  s.add_development_dependency('ammeter')
end
