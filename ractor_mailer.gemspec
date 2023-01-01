# frozen_string_literal: true

require_relative "lib/ractor_mailer/version"

Gem::Specification.new do |spec|
  spec.name = "ractor_mailer"
  spec.version = RactorMailer::VERSION
  spec.authors = ["yo_waka"]
  spec.email = ["y.wakahara@gmail.com"]

  spec.summary = "The plugin for sending async email with ActionMailer and Ractor."
  spec.description = "The plugin for sending async email with ActionMailer and Ractor."
  spec.homepage = "https://github.com/waka/ractor_mailer"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/waka/ractor_mailer.git"
  spec.metadata["changelog_uri"] = "https://github.com/waka/ractor_mailer/CHANGELOG.md"

  spec.metadata["rubygems_mfa_required"] = "true"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
