require 'forwardable'

class Element
  extend Forwardable
  def_delegators :content, :<<, :clear
  def_delegator :attributes, :store, :attribute
  def_delegator :renderer, :render, :to_s
  attr_reader :content, :attributes

  def self.renders_tag(tag, closing: true)
    define_method :tag_type do
      tag
    end

    define_method :renderer do
      if closing
        @renderer ||= FullTagRenderer.new(self)
      else
        @renderer ||= OpeningTagRenderer.new(self)
      end
    end
  end

  def initialize(attributes = {})
    @content = []
    @attributes = attributes
  end
end
