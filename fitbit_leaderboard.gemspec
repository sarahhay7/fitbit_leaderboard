# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fitbit_leaderboard/version'

Gem::Specification.new do |spec|
  spec.name          = "fitbit_leaderboard"
  spec.version       = FitbitLeaderboard::VERSION
  spec.authors       = ["Sarah Hay"]
  spec.email         = ["sarahhay7@gmail.com"]

  spec.summary       = %q{Track your friends' steps on Fitbit}
  spec.homepage      = "https://github.com/sarahhay7/fitbit_leaderboard"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
