class Writeup::Document
  attr_accessor :markdown

  def initialize(markdown)
    self.markdown = markdown
  end

  def html
    parsed[:output]
  end

  def toc
    parsed[:toc]
  end

  private

  def parsed
    @parsed ||= html_pipeline.call(markdown)
  end

  def html_pipeline
    @pipeline ||= HTML::Pipeline.new [
      HTML::Pipeline::MarkdownFilter,
      TaskList::Filter,
      HTML::Pipeline::SanitizationFilter,
      Writeup::Filters::TableOfContents,
      HTML::Pipeline::ImageMaxWidthFilter,
      HTML::Pipeline::SyntaxHighlightFilter,
      HTML::Pipeline::EmojiFilter,
      HTML::Pipeline::AbsoluteSourceFilter,
      Writeup::Filters::AbsoluteLinks,
      HTML::Pipeline::MentionFilter,
      HTML::Pipeline::AutolinkFilter
    ], {
      asset_root: "https://assets-cdn.github.com/images/icons",
    }
  end
end
