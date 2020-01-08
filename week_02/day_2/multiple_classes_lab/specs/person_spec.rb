require ('minitest/autorun')
require ('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../person')

class PersonTest < MiniTest::Test

  def setup()
  # @name = Person.new("Ross")
  # @age = Person.new(28)

  @person1 = Person.new("Ross", 28)
  @person2 = Person.new("Jamie", 35)

end
