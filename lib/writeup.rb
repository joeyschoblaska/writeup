require "pygments.rb"
require "html/pipeline"
require "task_list/filter"
require "erb"

module Writeup
  def self.render(markup, destination)
    raise "destination must end in .html" unless destination =~ /\.html$/

    @document = Writeup::Document.new(markup)
    @writeup_dir = File.dirname(__FILE__)
    result = template.result(binding)

    File.open(destination, "w") { |f| f.puts(result) }
  end

  def self.template
    ERB.new(File.read("#{File.dirname(__FILE__)}/../layout/template.html.erb"))
  end
end

Dir["#{File.dirname(__FILE__)}/writeup/**/*.rb"].each { |f| require f }
