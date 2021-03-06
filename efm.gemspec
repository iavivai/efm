# frozen_string_literal: true

require_relative "lib/efm/version"

Gem::Specification.new do |spec|
  spec.name          = "efm"
  spec.version       = Efm::VERSION
  spec.authors       = ["iavivai"]
  spec.email         = ["hello@yukitakaiha.com"]

  spec.summary       = "Emacs-like File Manager"
  spec.description   = "efm is a small Emacs-like file manager written in Ruby."
  spec.homepage      = "https://github.com/iavivai/efm"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'curses', '~> 1.4.0'
end
