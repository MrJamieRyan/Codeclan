class Bus
attr_reader :bus

def initialize(route, destination)
  @route = route
  @destination = destination
  @passengers = []

end


def return_sound(sound)
  return sound
end

def passenger_num
  return @passengers.length
end


# def add_person(person)
# @bus.push(person)
# end
#
end
