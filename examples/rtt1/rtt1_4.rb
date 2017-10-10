# Assume we have a method with positional arguments:

def mysterious_total(subtotal, tax, discount)
  subtotal + tax - discount
end

mysterious_total(100, 10, 5) # => 105

# This method does its job, but as a reader of the code using the mysterious_total method,
# I have no idea what those arguments mean without looking up the implementation of the method.


# By using keyword arguments, we know what the arguments mean
# without looking up the implementation of the called method:

def obvious_total(subtotal:, tax:, discount:)
  subtotal + tax - discount
end

obvious_total(subtotal: 100, tax: 10, discount: 5) # => 105

# Keyword arguments allow us to switch the order of the arguments,
# without affecting the behavior of the method:
obvious_total(subtotal: 100, discount: 5, tax: 10) # => 105
