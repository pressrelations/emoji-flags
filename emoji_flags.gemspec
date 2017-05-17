# coding: utf-8
Gem::Specification.new do |s|
  s.name          = 'emoji_flags'
  s.version       = '0.0.2'

  s.authors       = ['Edvinas Bartkus', 'Sven Sommerfeld']
  s.email         = ['edvinas.bartkus@gmail.com', 'sven.sommerfeld@pressrelations.de']
  s.homepage      = 'https://github.com/edvinasbartkus/emoji_flags'

  s.summary       = 'Country code to Emoji Flag'
  s.description   = 'Country code to Emoji Flag based on the latest Emoji library'
  s.license       = 'MIT'

  s.files         = `git ls-files -z`.split("\x0")
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_dependency "activesupport", "~> 4.2"

  s.add_development_dependency "bundler", "~> 1.10"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "rspec"
  s.add_development_dependency "rubocop"
  s.add_development_dependency "guard"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "guard-rubocop"
  s.add_development_dependency "pry"
  s.add_development_dependency "webmock", "1.24.6"
  s.add_development_dependency "simplecov"
  s.add_development_dependency "json_expressions"
end
