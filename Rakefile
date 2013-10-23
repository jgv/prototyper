require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/unit/*.rb']
  t.verbose = true
end

task :default => :test
