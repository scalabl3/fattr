## fattr.gemspec
#

Gem::Specification::new do |spec|
  spec.name = "fattr"
  spec.version = "2.2.1"
  spec.platform = Gem::Platform::RUBY
  spec.summary = "fattr"
  spec.description = "description: fattr kicks the ass"

  spec.files = ["lib", "lib/fattr.rb", "lib/fattr_hash.rb", "LICENSE", "Rakefile", "README", "README.erb", "samples", "samples/a.rb", "samples/b.rb", "samples/c.rb", "samples/d.rb", "samples/e.rb", "samples/f.rb", "samples/g.rb", "samples/h.rb", "test", "test/fattr_test.rb"]
  spec.executables = []
  
  spec.require_path = "lib"

  spec.has_rdoc = true
  spec.test_files = nil

# spec.add_dependency 'lib', '>= version'

  spec.extensions.push(*[])

  spec.rubyforge_project = "codeforpeople"
  spec.author = "Ara T. Howard"
  spec.email = "ara.t.howard@gmail.com"
  spec.homepage = "http://github.com/ahoward/fattr/tree/master"
end
