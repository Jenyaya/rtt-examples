# lambda is anonymous function

l = lambda { "Do or do not" }
puts l.call # => "Do or do not"

# blocks - piece of code that can not be stored in the variable and is not an object

def demonstrate_block(number)
  yield(number)
end

puts demonstrate_block(7) { |number| number + 1 } # => 8

puts demonstrate_block(8) # =>  no block given (yield) (LocalJumpError)


# Blocks are commonly used in Ruby in iteration over elements of collection - Arrays and Hashes

response.each { |item| items_ids << item[id_field] }

hash.each do |k, v|
  table_md << "|#{k}|#{v}|\n"
end
