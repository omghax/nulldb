# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{nulldb}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Avdi Grimm"]
  s.date = %q{2008-12-28}
  s.description = %q{NullDB is the Null Object pattern as applied to ActiveRecord database adapters.  It is a database backend that translates database interactions into no-ops.  Using NullDB enables you to test your model business logic - including +after_save+ hooks - without ever touching a real database.}
  s.email = ["avdi@avdi.org"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "LICENSE", "Manifest.txt", "README.txt", "Rakefile", "init.rb", "lib/active_record/connection_adapters/nulldb_adapter.rb", "lib/nulldb_rspec.rb", "spec/nulldb_spec.rb", "tasks/database.rake"]
  s.has_rdoc = true
  s.homepage = %q{NullDB was written by Avdi Grimm <mailto:avdi@avdi.org>}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{nulldb}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{NullDB is the Null Object pattern as applied to ActiveRecord database adapters}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 0"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.2"])
    else
      s.add_dependency(%q<activerecord>, [">= 0"])
      s.add_dependency(%q<hoe>, [">= 1.8.2"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 0"])
    s.add_dependency(%q<hoe>, [">= 1.8.2"])
  end
end
