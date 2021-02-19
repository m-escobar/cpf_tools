require_relative 'lib/cpf_tools/version'

Gem::Specification.new do |spec|
  spec.name          = 'cpf_tools'
  spec.version       = CpfTools::VERSION
  spec.authors       = ['Marcelo Escobar']
  spec.email         = ['mers.escobar@gmail.com']

  spec.summary       = 'Tools to work with the Brazilian Tax ID'
  spec.description   = 'The Brazilian Tax ID (CPF) validation and formatting, more functions to come'
  spec.homepage      = 'http://github.com/m-escobar/cpf_tools'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'http://github.com/m-escobar/cpf_tools'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
