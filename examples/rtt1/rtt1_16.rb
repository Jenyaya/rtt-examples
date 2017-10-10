module Foo
  def self.extended(base)
    puts "Class #{base} has been extended with module #{self} !"
  end

  def self.included(base)
    puts "Class #{base} has been included with module #{self} !"
  end
end

class Bar
  extend Foo
end

class Char
  include Foo
end

# Class Bar has been extended with module Foo !
# Class Char has been included with module Foo !
