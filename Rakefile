require "rspec/core/rake_task"
require "bundler/gem_tasks"

#Rake::TestTask.new(:test) do |t|
#  t.libs << "test"
#  t.libs << "lib"
#  t.test_files = FileList['test/**/*_test.rb']
#end

RSpec::Core::RakeTask.new(:spec) do |task|
  task.rspec_opts = ['--color', '--format', 'documentation']
  #task.rspec_opts = ['--format', 'Nc']
end

task :default => :spec
