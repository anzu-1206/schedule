# -*- encoding: utf-8 -*-
# stub: moment-timezone-rails 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "moment-timezone-rails".freeze
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Kyle Fagan".freeze]
  s.date = "2023-03-08"
  s.description = "Rails integration for Momentjs timezone".freeze
  s.email = ["kfagan@mitre.org".freeze]
  s.homepage = "https://github.com/Bialogs/moment-timezone-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.4.20".freeze
  s.summary = "moment-timezone-0.5.41".freeze

  s.installed_by_version = "3.4.20" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<momentjs-rails>.freeze, [">= 2.10.5", "<= 3.0.0"])
end
