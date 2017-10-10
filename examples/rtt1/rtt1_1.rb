# Positional arguments

def foo(a, b, c)
  puts [a, b, c]
end

foo(1, 2, 3)  # => [1, 2, 3]
foo(1, 2)     # => ArgumentError: wrong number of arguments (2 for 3)


# Array arguments

def foo(*args)
  puts args
end

foo(1, 2, 3) # => [1, 2, 3]
foo(1, 2) # => [1, 2]

# Mixed

def foo(a, b, c, *d)
  puts [a, b, c]
  puts d
end

foo(1, 2, 3, 4, 5, 6)
#=> [1, 2, 3]
#=> [4, 5, 6]
