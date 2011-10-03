# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "campfire_bot/standup/version"

Gem::Specification.new do |s|
  s.name        = "campfire-bot-standup"
  s.version     = CampfireBot::Standup::VERSION
  s.authors     = ["hoverlover"]
  s.email       = ["hoverlover@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Plugin for campfire-bot that sends Standup emails using the command !standup.}
  s.description = s.summary

  s.rubyforge_project = "campfire-bot-standup"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib/campfire_bot"]

  s.add_dependency 'campfire-bot', '~> 0.0.1'
  s.add_dependency 'pony', '~> 1.3'
end
