class Fish
  attr_reader :name

  def initialize(name)
    @name = name
  end

def fish_count
    return @fish.length
  end

  def remove_fish
    @fish.pop()
  end

end
