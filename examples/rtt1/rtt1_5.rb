# Ruby allows do not specify keyword 'return'

def check_return(tax)
 return tax*2
end

check_return(100) # => 200

def check_return(tax)
 tax*2
end

check_return(100) # => 200

def convert_hash(hash)
    Hash.try_convert(hash)
end

convert_hash({1=>2}} # =>  {1=>2}
convert_hash("{1=>2}"} # => nil

# Avoid puts as last call

def calc(x)
  puts x*3
end

calc(3) # => nil


# Correct usage

def calc(x)
  x*3
end

puts calc(3) # => 9
