
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "adminlte_theme/version"

Gem::Specification.new do |spec|
  spec.name          = "adminlte_theme"
  spec.version       = AdminlteTheme::VERSION
  spec.authors       = ["Joseph Nelson Valeros"]
  spec.email         = ["valerosjoseph@gmail.com"]

  spec.summary       = %q{ A gemified AdminLTE theme for rails pipeline. }
  spec.description   = %q{ Caters the base theme of AdminLTE by Almsaeed Studio. Plugins are not included by default to maximize performance and should be added manually. }
  spec.homepage      = "https://github.com/neume/adminlte-theme"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "generator_spec", "~>0.9.4"

end
