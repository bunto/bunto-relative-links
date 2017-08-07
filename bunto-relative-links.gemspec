# encoding: utf-8

$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "bunto-relative-links/version"

Gem::Specification.new do |s|
  s.name          = "bunto-relative-links"
  s.version       = BuntoRelativeLinks::VERSION
  s.authors       = ["Ben Balter", "Suriyaa Kudo"]
  s.email         = ["ben.balter@github.com", "github@suriyaa.tk"]
  s.homepage      = "https://github.com/bunto/bunto-relative-links"
  s.summary       = "A Bunto plugin to convert relative links to markdown files " \
                    "to their rendered equivalents.\n"

  s.files         = `git ls-files app lib`.split("\n")
  s.platform      = Gem::Platform::RUBY
  s.require_paths = ["lib"]
  s.license       = "MIT"

  s.add_dependency "bunto", "~> 3.4"
  s.add_development_dependency "rubocop", "~> 0.43"
  s.add_development_dependency "rspec", "~> 3.5"
end
