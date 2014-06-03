require './lib/gemnasium/version'

Gem::Specification.new do |gem|
  gem.authors       = ["Tech-Angels"]
  gem.email         = ["contact@tech-angels.com"]
  gem.description   = "Safely upload your dependency files on gemnasium.com to track dependencies and get notified about updates and security advisories."
  gem.summary       = gem.description
  gem.homepage      = "https://gemnasium.com/"
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "gemnasium"
  gem.require_paths = ["lib"]
  gem.executables   = ["gemnasium"]
  gem.version       = Gemnasium::VERSION

  gem.add_development_dependency 'rake', '~>10.3.1'
  gem.add_development_dependency 'rspec', '~>3.0'
  gem.add_development_dependency 'cucumber'
  gem.add_development_dependency 'aruba'
  gem.add_development_dependency 'webmock'
end
