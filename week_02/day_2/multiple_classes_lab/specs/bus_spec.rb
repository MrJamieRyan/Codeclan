require ('minitest/autorun')
require ('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../person')
require_relative('../bus')

class BusTest < MiniTest::Test
def setup()
  @bus = Bus.new("22", "Ocean Terminal")

  @person1 = Person.new("Ross", 28)
  @person2 = Person.new("Jamie", 35)
end

def test_bus_makes_sound
  assert_equal("brum brum", @bus.return_sound("brum brum"))
end

def test_number_of_passengers_on_bus()
  assert_equal(0, @bus.passenger_num)
end

def test_was_passenger_added_to_bus
  assert_equal(1, )


# def test_add_passenger_to_bus
#   @bus.add_person(@person1)
# p assert_equal(1, .count)
# end

end
