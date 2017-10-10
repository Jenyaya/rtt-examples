# Ruby 2.0 introduced first-class support for keyword arguments:

def foo(bar: 'default')
  puts bar
end

foo # => 'default'
foo(bar: 'baz') # => 'baz'

# In Ruby 1.9, we could do something similar using a single Hash parameter:

def foo(options = {})
  bar = options.fetch(:bar, 'default')
  puts bar
end

foo # => 'default'
foo(bar: 'baz') # => 'baz'

# Ruby 2.0 blocks can also be defined with keyword arguments:

define_method(:foo) do |bar: 'default'|
  puts bar
end

foo # => 'default'
foo(bar: 'baz') # => 'baz'
