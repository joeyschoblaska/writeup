require "./lib/writeup"

require "pry"

task :test do
  markdown = %%
# Hello there
some content

## Sub section
more content
  %

  doc = Writeup::Document.new(markdown)
  binding.pry
end
