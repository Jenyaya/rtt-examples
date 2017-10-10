# Default values always after ordinary ones:

def foo(a, b, c = 'default', *d, e)
  puts [a, b, c]
  puts d
  puts e
end

foo(1, 2, 3)
#=> [1, 2, 'default']
#=> []
#=> 3

# Hash arguments
# Much useful then retrieving values from array by index

def foo(args)
  puts args[:a]
  puts args[:b]
end

foo(a: 1, b: 2)
#=> 1
#=> 2

# With default values

def foo(a, args = {})
  defaults = {b: 2, c: 3}
  args = defaults.merge(args)
  puts a
  puts args
end

foo(1, {c: 101, d:23, e: 34})
#=> 1
#=> {:b=>2, :c=>101, :d=>23, :e=>34}
