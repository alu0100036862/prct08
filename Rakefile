$:.unshift File.dirname(__FILE__) + 'lib'
$:.unshift './lib', './spec'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec

=begin
desc "Ejecutar las espectativas de la clase Matriz"
task :local do
  sh "rspec --format documentation -Ilib -Ispec spec/matriz_spec.rb"
end
=end


