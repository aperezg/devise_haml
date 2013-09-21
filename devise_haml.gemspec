# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'devise_haml/version'

Gem::Specification.new do |spec|
  spec.name          = "devise_haml"
  spec.version       = DeviseHaml::VERSION
  spec.authors       = ["Adrian Perez"]
  spec.email         = ["perezg.adrian@gmail.com"]
  spec.description   = %q{Convert devise erb files into haml files}
  spec.summary       = %q{Convert devise erb files into haml files}
  spec.homepage      = "http://github.com/gandark/devise_haml"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "html2haml"
  
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
