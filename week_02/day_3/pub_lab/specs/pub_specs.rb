require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative ("../pub.rb")
require_relative ("../customers.rb")
require_relative ("../drinks.rb")

class TestPub < Minitest::Test

  def setup
    @drink1 = Drinks.new('Tennents', 50)
    @drink2 = Drinks.new('Bud', 10)
    @drink3 = Drinks.new('Carling', 25)

    @pub = Pub.new("Codeclan Arms", 5000, [@drink1, @drink2, @drink3])

    @drinks = [@drink1,@drink2,@drink3]

  end

def test_pub_has_name
    pub = Pub.new("Codeclan Arms", 5000, [@drink1, @drink2, @drink3] )
    assert_equal("Codeclan Arms", pub.name)
  end

def test_does_till_start_at_0
  assert_equal(0, @pub.till)
end

def test_is_drinks_array_empty
  assert_equal(nil, @pub.drinks)
end

  def test_increase_total_cash()
    @pub.increase_total_cash(50)
    assert_equal(50, @pub.till)
  end


  end
