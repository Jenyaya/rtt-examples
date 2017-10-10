# explicit call

def calculation(a, b, &block) # &block is an explicit (named) parameter
  block.call(a, b)
end

puts calculation(5, 5) { |a, b| a + b }

# implicit call
def calculation(a, b)
  yield(a, b) # yield calls an implicit (unnamed) block
end

addition = lambda {|x, y| x + y}
puts calculation(5, 5, &addition)
# the same
puts calculation(5, 5) {|x, y| x + y}

# '&' symbol converts explicit to implicit and vice versa
# the block should be the last parameter passed to a method.
