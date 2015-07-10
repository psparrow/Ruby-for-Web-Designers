require_relative 'rubyforwebdesigners'

div = Div.new(id: 'main')
div << 'Hello World!'
puts div

br = Br.new(class: 'big')
puts br
