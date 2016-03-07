$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'tb_heavy_control/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'tb_heavy_control'
  s.version     = TbHeavyControl::VERSION
  s.authors     = ['Roman Kolesnev']
  s.email       = ['rvkolesnev@gmail.com']
  s.homepage    = 'https://github.com/ffloyd/tb_heavy_control'
  s.summary     = 'Trailblazer loader and integration for rails (without autoloading)'
  s.description = 'Autoloading makes some things too difficult. I prefer prerequiring all thing which i need.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'rails', '~> 4.2'

  s.add_development_dependency 'sqlite3'
end
