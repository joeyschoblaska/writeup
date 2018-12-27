Gem::Specification.new do |s|
  s.name        = "writeup"
  s.version     = "1.0.0"
  s.summary     = "Generic components from jeromegn/DocumentUp for generating static HTML documentation from Markdown."
  s.author      = "Joey Schoblaska"
  s.homepage    = "https://github.com/joeyschoblaska/writeup"
  s.license     = "MIT"

  s.files       = `git ls-files lib`.split("\n")
  s.executables << "writeup"

  s.add_development_dependency "rake"
  s.add_development_dependency "pry"

  s.add_runtime_dependency "pygments.rb", "~> 0.6.3"
  s.add_runtime_dependency "html-pipeline"
  s.add_runtime_dependency "task_list"
  s.add_runtime_dependency "rinku", "~> 1.7"
  s.add_runtime_dependency "gemoji", "~> 2.0"
  s.add_runtime_dependency "github-markdown", "~> 0.5"
  s.add_runtime_dependency "sanitize", "~> 4.0"
  s.add_runtime_dependency "escape_utils", "~> 1.0"
  s.add_runtime_dependency "github-linguist", "~> 4.5"
  s.add_runtime_dependency "commonmarker"
  s.add_runtime_dependency "rouge"
end
