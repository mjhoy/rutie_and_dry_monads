require 'bundler/gem_tasks'
require 'rake/testtask'

task :cargo do
  # https://github.com/danielpclark/rutie/issues/161#issue-1245609457
  `cargo rustc --release -- -C link-args=-Wl,-undefined,dynamic_lookup`
end

Rake::TestTask.new(minitest: :cargo) do |t|
  t.libs = %w[lib test]
  t.pattern = 'test/**/*_test.rb'
end

task test: [:minitest]

task default: :test
