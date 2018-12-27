module Writeup::Filters
  class Title < HTML::Pipeline::Filter
    def call
      h1 = doc.css("h1").first
      result[:title] = h1 ? h1.text : "Untitled"
      doc
    end
  end
end
