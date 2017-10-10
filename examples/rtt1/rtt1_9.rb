class Item

  def initialize(name)
    "We initialized #{name} item"
  end

  def show
    'I will show you'
  end
end

class Glass < Item

  def initialize(name, color)
    puts super(name) + " of a #{color} color"
  end

  def show
    super + ' a glass'
  end
end


item = Glass.new('glass', 'black')
puts item.show

# We initialized glass item of a black color
# I will show you a glass
