require('minitest/autorun')
require('minitest/reporters')
require_relative('../bank_account')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBankAccount < MiniTest::Test

  def test_can_get_account_holder_name
    bank_account = BankAccount.new("John", 500, "business")
assert_equal("John", bank_account.holder_name())
end
def test_can_get_account_balance
   bank_account = BankAccount.new("John", 500, "business")
   assert_equal(500, bank_account.balance())
 end

 def test_can_get_account_type
   bank_account = BankAccount.new("John", 500, "business")
   assert_equal("business", bank_account.type())
 end

 def test_can_set_holder_name
   bank_account = BankAccount.new("Alex", 1000000, "personal")
   bank_account.holder_name = "Sally"
   assert_equal("Sally", bank_account.holder_name())
end

def test_can_set_balance
  bank_account = BankAccount.new("Alex", 1000000, "personal")
  bank_account.balance = 1000
  assert_equal(1000, bank_account.balance())
end

def test_can_set_account_type
  bank_account = BankAccount.new("Alex", 1000000, "personal")
  bank_account.type = "business"
  assert_equal("business", bank_account.type)
end

def test_can_pay_into_account
  account = BankAccount.new('Bob', 100, 'business')
  account.deposit(1000)
  assert_equal(1100,account.balance)
end

def test_pay_monthly_fee_for_business_account
  account = BankAccount.new("Alex", 100, "personal")
  account.monthly_fee()
  assert_equal(50, account.balance)
end


def test_pay_monthly_fee_for_personal_account
  account = BankAccount.new("Alex", 100, "personal")
  account.monthly_fee()
  assert_equal(90, account.balance)
end
end
