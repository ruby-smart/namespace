# frozen_string_literal: true

require_relative 'lib/ruby_smart/namespace/version'

Gem::Specification.new do |spec|
  spec.name    = 'ruby_smart-namespace'
  spec.version = RubySmart::Namespace.version
  spec.authors = ['Tobias Gonsior']
  spec.email   = ['info@ruby-smart.org']

  spec.summary     = 'Unified namespace for Ruby applications'
  spec.description = <<~DESC
    RubySmart::Namespace is a simple Ruby extension to provide generic namespace methods for each Object.
    This simplifies the handling of loading & accessing other classes.
  DESC

  spec.homepage              = 'https://github.com/ruby-smart/namespace'
  spec.license               = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['homepage_uri']    = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/ruby-smart/namespace'
  spec.metadata['changelog_uri']   = "#{spec.metadata["source_code_uri"]}/blob/main/docs/CHANGELOG.md"

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end

  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport', '>= 4.0'

  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'coveralls_reborn', '~> 0.25'
  spec.add_development_dependency 'yard', '~> 0.9'
end