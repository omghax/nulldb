require 'rake'
require 'rake/rdoctask'
require 'spec/rake/spectask'

desc "Run all examples"
Spec::Rake::SpecTask.new('spec') do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
end

Rake::RDocTask.new do |rd|
  rd.main = "README"
  rd.rdoc_files.include("README", "LICENSE", "lib/**/*.rb")
end
