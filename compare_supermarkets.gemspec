# frozen_string_literal: true

require_relative "lib/compare_supermarkets/version"

Gem::Specification.new do |spec|
  spec.name          = "compare_supermarkets"
  spec.version       = CompareSupermarkets::VERSION
  spec.authors       = ["Justin Berger Howes"]
  spec.email         = ["howes.j.j@gmail.com"]

  spec.summary       = "Compare supermarket prices"
  spec.description   = "Will search Woolworths and Coles online stores for prices based on an input search parameter"
  spec.homepage      = "https://github.com/happymelonbox/ruby_portfolio_project_gem"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/happymelonbox/ruby_portfolio_project_gem"
  spec.metadata["changelog_uri"] = "https://github.com/happymelonbox/ruby_portfolio_project_gem/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  s.add_development_dependency "bundler", "~> 2.2.28"
  s.add_development_dependency "rake", "~> 13.0.6"
  s.add_development_dependency "rspec", "~> 3.10.0"
  s.add_development_dependency "nokogiri", ">= 1.10.8"
  s.add_development_dependency "pry", ">= 0"

end
