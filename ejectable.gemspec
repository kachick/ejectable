Gem::Specification.new do |gem|
  gem.name          = 'ejectable'
  gem.version       = '0.0.2'
  gem.authors       = ['Kenichi Kamiya']
  gem.email         = ['kachick1+ruby@gmail.com']
  gem.licenses      = ['MIT']
  gem.summary       = 'Eject and close tray on your devices.'
  gem.description   = gem.summary.dup
  gem.homepage      = 'http://kachick.github.com/ejectable'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.required_ruby_version = '>= 1.9.2'

  gem.add_development_dependency 'yard', '~> 0.8'
  gem.add_development_dependency 'rake'
end
