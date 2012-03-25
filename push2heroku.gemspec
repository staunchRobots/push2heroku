# -*- encoding: utf-8 -*-
require File.expand_path('../lib/push2heroku/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Neeraj Singh"]
  gem.email         = ["neerajdotname@gmail.com"]
  gem.description   = %q{push2heroku}
  gem.summary       = %q{push2heroku}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "push2heroku"
  gem.require_paths = ["lib"]
  gem.version       = Push2heroku::VERSION

  gem.add_dependency("hashr", "= 0.0.19")
  gem.add_dependency("heroku")
end
