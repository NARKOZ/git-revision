Gem::Specification.new do |gem|
  gem.name         = 'git-revision'
  gem.version      = '0.0.5'
  gem.files        = `git ls-files`.split($\)
  gem.require_path = 'lib'
  gem.license      = 'BSD-2-Clause'

  gem.author       = 'Nihad Abbasov'
  gem.email        = 'nihad@42na.in'
  gem.summary      = 'Git Revision provides information about git source code.'
  gem.homepage     = 'https://github.com/NARKOZ/git-revision'
end
