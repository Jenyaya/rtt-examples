# !Do not play with methods in modules defined as self to extend class

module Foo

  def abc
    puts 'abc'
  end

  def def
    puts 'def'
  end

  def self.abc
    puts 'self.abcd'
  end

end


class Bar
  include Foo
  extend Foo
end

bar = Bar.new

bar.abc
Foo.abc # correct usage
Bar.abc # will call to not-self method like class level

bar.extend Foo
bar.abc # will call to not-self method like class level
