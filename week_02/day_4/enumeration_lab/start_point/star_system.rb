class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
      @name = name
      @planets = planets
    end

def has_planets(count)
  return @planets.count
end


def planet_names()
p planets.map {|planets| planets.name}
end

def get_planet_by_name(planet_name)
 found_planets = planets.find { |planets| planets.name == planet_name}
 return found_planets
end

def get_largest_planet()
largest_planet = planets.max_by { |planets| planets.diameter}
return largest_planet
end

def get_smallest_planet()
  smallest_planet = planets.min_by { |planets| planets.diameter}
  return smallest_planet
end

def get_planets_with_no_moons()
  planets_with_no_moons = planets.find_all { |planets| planets.number_of_moons == 0 }
  return planets_with_no_moons
end

def get_planets_with_more_moons(number)
get_planets_with_more_moons = planets.find_all { |planets| planets.number_of_moons >= number }
return get_planets_with_more_moons

end

end
