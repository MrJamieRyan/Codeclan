require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative ("../pub.rb")
require_relative ("../drinks.rb")
require_relative ("../customers.rb")

class TestCustomers < Minitest::Test

def setup
    @customers = Customers.new("Luca", 500, [])
end

def test_customer_has_name
  customer = Customers.new("Luca", 500, [])
  assert_equal("Luca", customer.name)
end

def test_customer_has_wallet
  customer = Customers.new("Luca", 500, [])
  assert_equal(500, customer.wallet)
end

def test_customer_can_remove_wallet()
  @customers.remove_wallet(50)
  assert_equal(450, @customers.wallet)
end

def test_add_drink()
  @drinks.add_drink(@drink1)
assert_equal(1, @customers.drinks )
end
end
