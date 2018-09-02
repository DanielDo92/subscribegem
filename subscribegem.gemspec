$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "subscribegem/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "subscribegem"
  s.version     = Subscribegem::VERSION
  s.authors     = ["DaiDuongPixta"]
  s.email       = ["duong.dodai@pixta.co.jp"]
  s.homepage    = "https://www.pixtastock.com/"
  s.summary     = "Summary of Subscribegem."
  s.description = "Description of Subscribegem."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.2"
  s.add_development_dependency "rspec-rails", "~> 3.3.2"
  s.add_development_dependency "capybara", "~> 2.4.4"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rake", "< 11.0"
  s.add_development_dependency "bcrypt", "~> 3.1.10"
  s.add_development_dependency "warden", "~> 1.2.3"
  s.add_dependency "mysql2"
  s.add_dependency "pry-rails"
  s.add_development_dependency "factory_girl", "~> 4.4.0"
end
