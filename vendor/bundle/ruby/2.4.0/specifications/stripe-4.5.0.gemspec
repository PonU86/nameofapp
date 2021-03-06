# -*- encoding: utf-8 -*-
# stub: stripe 4.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "stripe".freeze
  s.version = "4.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Stripe".freeze]
  s.date = "2019-01-02"
  s.description = "Stripe is the easiest way to accept payments online.  See https://stripe.com for details.".freeze
  s.email = "support@stripe.com".freeze
  s.executables = ["stripe-console".freeze]
  s.files = ["bin/stripe-console".freeze]
  s.homepage = "https://stripe.com/docs/api/ruby".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.0".freeze)
  s.rubygems_version = "2.7.8".freeze
  s.summary = "Ruby bindings for the Stripe API".freeze

  s.installed_by_version = "2.7.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>.freeze, ["~> 0.13"])
      s.add_runtime_dependency(%q<net-http-persistent>.freeze, ["~> 3.0"])
    else
      s.add_dependency(%q<faraday>.freeze, ["~> 0.13"])
      s.add_dependency(%q<net-http-persistent>.freeze, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<faraday>.freeze, ["~> 0.13"])
    s.add_dependency(%q<net-http-persistent>.freeze, ["~> 3.0"])
  end
end
