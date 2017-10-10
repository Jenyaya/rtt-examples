# Commonly used approach to append class and instance methods

module Foo
  def self.included(base)
    base.extend(ClassMethods)
  end

  # namespace for class level methods as module
  module ClassMethods
    def bar
      puts 'class method'
    end
  end

 # instance level methods
  def foo
    puts 'instance method'
  end
end

class Baz
  include Foo
end

Baz.bar # => class method
Baz.new.foo # =>  instance method
Baz.foo # =>  undefined method ‘foo’ for Baz:Class (NoMethodError)
Baz.new.bar # =>  undefined method ‘bar’ for #<Baz:0x2b53348> (NoMethodError)
