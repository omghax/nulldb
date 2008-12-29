require 'rubygems'
require 'hoe'

Hoe.new('nulldb', '0.0.1') do |p|
  p.developer 'Avdi Grimm', 'avdi@avdi.org'
  p.extra_deps << ['activerecord']

  # Use RSpec for testing.
  p.testlib = 'spec'
  p.test_globs = 'spec/**/*_spec.rb'
end

desc "Publish project home page"
task :publish => :redocs do
  sh "rsync --recursive html/* avdi.org:avdi.org/projects/nulldb/"
end

desc "Tag release"
task :tag do
  repos   = "http://svn.avdi.org/nulldb"
  version = ENV["VERSION"]
  raise "No version specified" unless version
  sh "svn cp #{repos}/trunk #{repos}/tags/nulldb-#{version}"
end
