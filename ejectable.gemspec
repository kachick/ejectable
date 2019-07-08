Gem::Specification.new do |gem|
  gem.name          = 'ejectable'
  gem.version       = '0.1.0'
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

  gem.add_development_dependency 'test-unit', '>= 3.3.3', '< 4'
  gem.add_development_dependency 'yard', '>= 0.9.20', '< 2'
  gem.add_development_dependency 'rake', '>= 10', '< 20'
end
