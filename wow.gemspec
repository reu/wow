Gem::Specification.new do |s|
  s.name = %q{wow}
  s.version = "0.1.0"
  s.rubygems_version = %q{1.3.5}

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  
  s.date = %q{2009-02-07}
  s.summary = %q{A world of warcraft armory API.}
  s.description = %q{A world of warcraft armory API.}
  
  s.files = ["wow.gemspec","lib/wow.rb"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{wow}

  s.authors = ["Rodrigo Navarro"]
  s.email = ["rnavarro1@gmail.com"]
  s.homepage = "http://github.com/reu/wow"

  s.has_rdoc = false

  if s.respond_to? :specification_version
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0')
      s.add_runtime_dependency %q<hpricot>, [">= 0.8.2"]
    else
      s.add_dependency %q<hpricot>, [">= 0.8.2"]
    end
  else
      s.add_dependency %q<hpricot>, [">= 0.8.2"]
  end
end