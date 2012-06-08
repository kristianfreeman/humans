# -*- encoding: utf-8 -*-
require File.expand_path('../lib/humans/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Kristian Freeman"]
  gem.email         = ["kristian@redsashimi.com"]
  gem.description   = %q{humans.txt helper}
  gem.summary       = %q{Creates basic humans.txt from git log}
  gem.homepage      = "http://github.com/redsashimi/humans"

  gem.add_development_dependency "rspec"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "humans"
  gem.require_paths = ["lib"]
  gem.version       = Humans::VERSION
end
