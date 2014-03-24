# -*- encoding: utf-8 -*-
# stub: dm-mysql-adapter 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "dm-mysql-adapter"
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Dan Kubb"]
  s.date = "2011-10-09"
  s.description = "MySQL Adapter for DataMapper"
  s.email = "dan.kubb@gmail.com"
  s.extra_rdoc_files = ["LICENSE", "README.rdoc"]
  s.files = ["LICENSE", "README.rdoc"]
  s.homepage = "http://github.com/datamapper/dm-mysql-adapter"
  s.rubyforge_project = "datamapper"
  s.rubygems_version = "2.2.2"
  s.summary = "MySQL Adapter for DataMapper"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<do_mysql>, ["~> 0.10.6"])
      s.add_runtime_dependency(%q<dm-do-adapter>, ["~> 1.2.0"])
      s.add_development_dependency(%q<dm-migrations>, ["~> 1.2.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<rake>, ["~> 0.9.2"])
      s.add_development_dependency(%q<rspec>, ["~> 1.3.2"])
    else
      s.add_dependency(%q<do_mysql>, ["~> 0.10.6"])
      s.add_dependency(%q<dm-do-adapter>, ["~> 1.2.0"])
      s.add_dependency(%q<dm-migrations>, ["~> 1.2.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<rake>, ["~> 0.9.2"])
      s.add_dependency(%q<rspec>, ["~> 1.3.2"])
    end
  else
    s.add_dependency(%q<do_mysql>, ["~> 0.10.6"])
    s.add_dependency(%q<dm-do-adapter>, ["~> 1.2.0"])
    s.add_dependency(%q<dm-migrations>, ["~> 1.2.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<rake>, ["~> 0.9.2"])
    s.add_dependency(%q<rspec>, ["~> 1.3.2"])
  end
end
