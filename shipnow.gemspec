Gem::Specification.new do |gem|
  gem.name  = 'shipnow'
  gem.version = '0.0.1'
  gem.author = 'ShipNow'
  gem.email = 'info@shipnow.com.ar'
  gem.description = 'ShipNow API Client'
  gem.summary = 'ShipNow API Client'
  gem.homepage = 'http://github.com/shipnow/shipnow-ruby'
  gem.license = 'MIT'

  gem.files = `git ls-files -z`.split("\x0")
  gem.test_files = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'http'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'minitest', '~> 5.0'
end
