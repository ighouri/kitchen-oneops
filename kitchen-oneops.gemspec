# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kitchen/driver/oneops_version'

Gem::Specification.new do |spec|
  spec.name          = 'kitchen-oneops'
  spec.version       = Kitchen::Driver::ONEOPS_VERSION
  spec.authors       = ['Imaad Ghouri']
  spec.email         = ['ighouri@walmartlabs.com']
  spec.description   = %q{A Test Kitchen Driver for Oneops}
  spec.summary       = spec.description
  spec.homepage      = ''
  spec.license       = 'Apache 2.0'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = []
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_dependency 'test-kitchen', '~> 1.4', '>= 1.4.1'
 

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'

  spec.add_development_dependency 'cane'
  spec.add_development_dependency 'tailor'
  spec.add_development_dependency 'countloc'
end
