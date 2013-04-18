require File.expand_path('../lib/prototyper/version', __FILE__)

Gem::Specification.new do |s|

  s.name = 'prototyper'
  s.version = Prototyper::VERSION
  s.author = 'Jonathan Vingiano'
  s.email = 'jgv@jonathanvingiano.com'
  s.homepage = 'https://github.com/jgv/prototyper'
  s.rubyforge_project = 'prototyper'
  s.summary = 'Set up some boilerplate'
  s.description = 'Set up Sinatra boilerplate the way I like it. Useful for prototyping ideas.'
  s.files = `git ls-files`.split("\n")
  s.test_file = 'test/unit/prototyper.rb'
  s.require_paths = ['lib', 'bin']
  s.executables = ['prototyper']

end
