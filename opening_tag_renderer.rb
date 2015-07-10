class OpeningTagRenderer
  attr_reader :element

  def initialize(element)
    @element = element
  end

  def render
    markup = "<#{element.tag_type}"

    element.attributes.each do |key, value|
      markup << " #{key}=\"#{value}\""
    end

    markup << ">"
  end
end
