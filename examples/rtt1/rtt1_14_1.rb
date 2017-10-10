# include does not add class level methods

module Foo
  def self.module_level_method
    puts "Module level method"
  end
  def instance_level_method
    puts "Instance level method"
  end
end

class Bar
  include Foo
end

bar = Bar.new
bar.instance_level_method # => "Instance level method"
Bar.module_level_method   # => class: NoMethodError
