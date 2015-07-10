require 'minitest/autorun'
require_relative '../rubyforwebdesigners'

class TestOpeningTagRenderer < Minitest::Test
  def test_render
    div = Div.new(id: 'main')
    div << 'Hello World!'
    renderer = OpeningTagRenderer.new(div)

    assert_equal '<div id="main">', renderer.render
  end
end
