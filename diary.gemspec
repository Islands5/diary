# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'diary/version'

Gem::Specification.new do |spec|
  spec.name          = "diary"
  spec.version       = Diary::VERSION
  spec.authors       = ["Islands5"]
  spec.email         = ["five.islands.04010613@gmail.com"]
  spec.summary       = %q{simple diary tool on your pc.}
  spec.description   = %q{diary tool}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake",    "~> 10.0"
  spec.add_development_dependency "yard",    "~> 0.8"
  spec.add_development_dependency "redcarpet",    "~> 2.2"
end
