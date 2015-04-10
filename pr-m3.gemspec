# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pr/m3/version'

Gem::Specification.new do |spec|
  spec.name          = "pr-m3"
  spec.version       = Pr::M3::VERSION
  spec.authors       = ["Ollie Buck"]
  spec.email         = ["github@olliebuck.com"]
  spec.description   = %q{Attempt to bring all open pull requests in a project up to date with the main branch in one command.}
  spec.summary       = %q{Pull Request Multi Master Merge}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
