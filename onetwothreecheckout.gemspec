# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'onetwothreecheckout/version'

Gem::Specification.new do |spec|
  spec.name          = "onetwothreecheckout"
  spec.version       = Onetwothreecheckout::VERSION
  spec.authors       = ["Zack Siri"]
  spec.email         = ["zack@codemy.net"]
  spec.summary       = %q{Ruby wrapper for 123 checkout}
  spec.description   = %q{Ruby gem for interfacing with 123 checkout sevice}
  spec.homepage      = "http://www.codemy.net"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rest-client", "~> 1.7"
  spec.add_dependency "hashie", "~> 3.3"
  spec.add_dependency "builder", "~> 3.2"
  spec.add_dependency "activesupport", "~> 4.1"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.3"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry", "~> 0.10"
end
