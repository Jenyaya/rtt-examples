# extend can be used even for object:
module Foo
  def module_method
    puts "Module Method invoked"
  end
end

class Bar
end

bar=Bar.new
bar.extend Foo
bar.module_method # => Module Method invoked

Bar.extend Foo
Bar.module_method # => Module Method invoked
