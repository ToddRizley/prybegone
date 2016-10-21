# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'prybegone/version'

Gem::Specification.new do |spec|
  spec.name          = "prybegone"
  spec.version       = Prybegone::VERSION
  spec.authors       = ["Todd Rizley, Jonathan Alexander"]
  spec.email         = ["todd.rizley@flatironschool.com, jonathan.alexander@flatironschool.com"]

  spec.summary       = %q{Comment in, comment out or remove 'binding.pry' from your directory's files.}
  #spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/ToddRizley/prybegone"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = ["prybegone"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
