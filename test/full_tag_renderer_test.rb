require 'minitest/autorun'
require_relative '../rubyforwebdesigners'

class TestFullTagRenderer < Minitest::Test
  def test_render
    div = Div.new(id: 'main')
    div << 'Hello!'
    renderer = FullTagRenderer.new(div)

    assert_equal '<div id="main">Hello!</div>', renderer.render
  end
end
