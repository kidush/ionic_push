# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ionic_push/version'

Gem::Specification.new do |spec|
  spec.name          = "ionic_push"
  spec.version       = IonicPush::VERSION
  spec.authors       = ["Thiago F. Lins"]
  spec.email         = ["thiago.evandson@gmail.com"]

  spec.summary       = %q{Gem for send push notification through Ionic Push.}
  spec.description   = %q{A simple gem for comunicate and send push notfication through Ionic Push.}
  spec.homepage      = "https://github.com/kidush/ionic_push"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "httparty", "~> 0.13.7"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.4", "=> 3.4.0"
  spec.add_development_dependency "vcr", "~> 3.0", "=> 3.0.1"
  spec.add_development_dependency "webmock", "~> 2.0", "=> 2.0.0"
  spec.add_development_dependency "pry", "~> 0.10.3"
  spec.add_development_dependency "rubocop", "~> 0.39.0"
end
