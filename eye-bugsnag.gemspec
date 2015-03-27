# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eye/notify/bugsnag/version'

Gem::Specification.new do |spec|
  spec.name          = "eye-bugsnag"
  spec.version       = Eye::Notify::Bugsnag::VERSION
  spec.authors       = ["Oleg Vivtash"]
  spec.email         = ["oleg@vivtash.net"]
  spec.summary       = %q{Eye to BugSnag notification}
  spec.description   = %q{Eye to BugSnag notification}
  spec.homepage      = "https://github.com/duhast/eye-bugsnag"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency "bugsnag", ">= 1.2.10"
  spec.add_runtime_dependency "eye", "~> 0.5"
end
