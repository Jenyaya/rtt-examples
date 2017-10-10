class Item

  def self.show
    puts "Class method show invoked !"
  end

  class << self
    def show_class_self
      puts "'class << self' method show invoked !"
    end
  end

  def show
    puts "Instance method show invoked !"
  end

end

Item.show # => "Class method show invoked !"
Item.show_class_self # => "'class << self' method show invoked !"

item = Item.new
item.show # => "Instance method show invoked !"
