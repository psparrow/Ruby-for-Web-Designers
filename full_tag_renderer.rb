class FullTagRenderer < OpeningTagRenderer
  def render
    markup = super
    markup << render_content
    markup << render_closing_tag
  end

  private

  def render_content
    element.content.join
  end

  def render_closing_tag
    "</#{element.tag_type}>"
  end
end
