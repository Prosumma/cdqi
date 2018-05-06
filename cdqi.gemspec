
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "cdqi/version"

Gem::Specification.new do |spec|
  spec.name          = "cdqi"
  spec.version       = CDQI::VERSION
  spec.authors       = ["Gregory Higley"]
  spec.email         = ["code@revolucent.net"]

  spec.summary       = %q{Creates proxy objects for Core Data Query Interface.}
  spec.description   = %q{Creates proxy objects for Core Data Query Interface.}
  spec.homepage      = "https://github.com/prosumma/cdqi"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = ["cdqi"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
