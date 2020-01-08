class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end
end

  def add_fish(fish)
    @stomach.push(fish)
  end

  def number_of_fish_in_stomach
    return @stomach.length
  end

  def growl
    return 'growl'
  end
