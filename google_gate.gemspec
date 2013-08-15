# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'google_gate/version'

Gem::Specification.new do |spec|
  spec.name          = "google_gate"
  spec.version       = GoogleGate::VERSION
  spec.authors       = ["Tom Hanley"]
  spec.email         = ["tjhanleyx@gmail.com"]
  spec.description   = %q{Rails Engine for adding google apps authentication to lock down your staging or pre-launch sites to members of your domain only}
  spec.summary       = %q{Locking down your staging applications with HTTP_AUTH is so 2000 'n late. Use your company's Google App account to restrict access to your staging app}
  spec.homepage      = "https://github.com/tjhanley/google_gate"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "omniauth"
  spec.add_dependency "omniauth-google-apps"
end
