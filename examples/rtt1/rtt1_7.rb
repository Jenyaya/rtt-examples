# Class instance variables has unique values for each instance of the class

@foobar

# Class variable is shared by all instances of a class

@@foobar


# used for saving configs and status

class Client
  @@status = 'online'

  def status=(status)
    @@status = status
  end

  def status
    @@status
  end
end

class Operator < Client;
end

client=Client.new
operator=Operator.new

puts client.status # => online
puts operator.status # => online

operator.status='offline'

puts operator.status # => offline
puts client.status# => offline
