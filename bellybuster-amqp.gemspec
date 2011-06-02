# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bellybuster-amqp/version"
require 'base64'

Gem::Specification.new do |s|
  s.name = "bellybuster-amqp"
  s.version = BellyBuster::Transport::AMQP::VERSION

  s.platform = Gem::Platform::RUBY
  s.authors = %x{git log --pretty=format:"%an"}.split("\n")
  s.date = Time.now.utc.strftime("%Y-%m-%d")
  s.description = %q{bellybuster transport implementation using AMQP}
  s.email = Base64.decode64 "Y3JhaWdAbWluZHNjcmF0Y2gub3Jn\n"
  s.homepage = %q{http://github.com/mindscratch/bellybuster-amqp}
  s.summary = s.description

  s.add_development_dependency "rake"
  s.add_development_dependency "rspec", "~>2.0"
  s.add_dependency "amqp", "~> 0.8.0.RC12"

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  begin
    require "changelog"
  rescue LoadError
    warn "You have to have changelog gem installed for post install message"
  else
    s.post_install_message = CHANGELOG.new('CHANGELOG').version_changes
  end

end
