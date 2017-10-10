a = 10
b = "42"

begin
  puts "a + b is #{a + b}"
rescue
  puts "Could not add variables a (#{a.class}) and b (#{b.class})"
ensure
  puts 'I will always execute'
end



# --------------------------------------------------- #
a = 10
b = "42"

begin
  puts "a + b is #{a + b}"
rescue StandardError => e
  puts e.message
  puts "Could not add variables a (#{a.class}) and b (#{b.class})"
ensure
  puts 'I will always execute'
end


class CustomError < StandardError
  attr_reader :thing
  def initialize(msg="My default message", thing="apple")
    @thing = thing
    super(msg)
  end
end

begin
  raise CustomError.new("my message", "my thing")
rescue => e
  puts e.message # "my message"
  puts e.thing # "my thing"
end
