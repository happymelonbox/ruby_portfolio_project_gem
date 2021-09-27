# frozen_string_literal: true

require_relative "lib/compare_supermarkets/version"

Gem::Specification.new do |spec|
  spec.name          = "compare_supermarkets"
  spec.version       = CompareSupermarkets::VERSION
  spec.authors       = ["Justin Berger Howes"]
  spec.email         = ["howes.j.j@gmail.com"]
  spec.summary       = "Compare supermarket prices"
  spec.description   = "Will search Woolworths and Coles online stores for prices based on an input search parameter"
  spec.homepage      = "http://rubygems.org/gems/compare_supermarkets"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/happymelonbox/ruby_portfolio_project_gem"
  spec.metadata["changelog_uri"] = "https://github.com/happymelonbox/ruby_portfolio_project_gem/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = ["lib/worlds_best_restaurants.rb", "lib/worlds_best_restaurants/cli.rb", "lib/worlds_best_restaurants/restaurant.rb", "lib/worlds_best_restaurants/scraper.rb", "lib/worlds_best_restaurants/version.rb"]
  spec.bindir        = "exe"
  spec.executables   << 'compare_supermarkets'
  spec.require_paths = ["lib", "config"]
  spec.add_development_dependency "bundler", "~> 2.2.28"
  spec.add_development_dependency "rake", "~> 13.0.6"
  spec.add_development_dependency "rspec", "~> 3.10.0"
  spec.add_development_dependency "nokogiri", ">= 1.10.8"
  spec.add_development_dependency "pry", ">= 0"

end
