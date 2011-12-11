$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "collectivity/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "collectivity"
  s.version     = Collectivity::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Collectivity."
  s.description = "TODO: Description of Collectivity."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  # s.test_files = Dir["test/**/*"]

  s.add_dependency "devise"
  s.add_dependency "grape"
  s.add_dependency "money"
  s.add_dependency "rails", "~> 3.1.3"

  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "annotate"
  s.add_development_dependency "capybara"
  s.add_development_dependency "database_cleaner"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "faker"
  s.add_development_dependency "rspec-rails"

end
