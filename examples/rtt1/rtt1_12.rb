# safe namespace

module Perimeter
  class Array
    def initialize
      @size = 400
    end
  end
end

our_array = Perimeter::Array.new
ruby_array = Array.new

p our_array.class # => Perimeter::Array
p ruby_array.class # => Array

# overwriting existing class

class Array
  def initialize
    @size = 400
  end

  def size
    @size
  end
end


arr = Array.new
puts arr.size # => 400
puts arr.class # => Array
