# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rails_request_parser/version"

Gem::Specification.new do |spec|
  spec.name = "rails_request_parser"
  spec.version = RailsRequestParser::VERSION
  spec.authors = ["Joe Gesualdo"]
  spec.email = ["joegesualdo@gmail.com"]

  spec.summary = %q{Parse rails requests.}
  spec.description = %q{Parse Rails requests and provide helper methods.}
  spec.homepage = ""
  spec.license = "MIT"

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 13.0.1"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency "user_agent_parser", "~> 2.6.0"
end
