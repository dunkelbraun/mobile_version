# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mobile_version/version"

Gem::Specification.new do |s|
  s.name        = "mobile_version"
  s.version     = MobileVersion::VERSION
  s.authors     = ["Marc Essindi"]
  s.email       = ["marc.essindi@dunkelbraun.com"]
  s.homepage    = "https://github.com/dunkelbraun/Mobile-Version"
  s.summary     = "Render mobile browser versions of your views in Rails with zero-configuration."

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rails", ">= 3.0.3"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "mocha"

  s.add_dependency "rails", ">= 3.0.3"
  s.add_dependency "browser", ">= 0.1.3"

end
