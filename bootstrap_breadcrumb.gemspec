$:.push File.expand_path("../lib", __FILE__)

require "bootstrap_breadcrumb/version"

Gem::Specification.new do |s|
  s.name        = "bootstrap_breadcrumb"
  s.version     = BootstrapBreadcrumb::VERSION
  s.authors     = ["Rocodev"]
  s.email       = ["tech@rocodev.com"]
  s.homepage    = "https://github.com/xdite/bootstrap-breadcrumb"
  s.summary     = "Helpers to generate breadcrumbs"
  s.description = "Helpers to generate breadcrumbs"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.0.2"

  s.add_development_dependency "sqlite3"
end
