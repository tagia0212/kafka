# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kafkarb/version'

Gem::Specification.new do |spec|
  spec.name          = "kafkarb"
  spec.version       = Kafkarb::VERSION
  spec.authors       = ["Simon Eskildsen"]
  spec.email         = ["sirup@sirupsen.com"]
  spec.summary       = %q{Ruby kafka client}
  spec.description   = %q{Fork from https://github.com/Sirupsen/kafka}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
