class BankAccount

attr_accessor :holder_name, :balance, :type
# attr_writer :holder_name, :balance, :type

  def initialize(holder_name, balance, type)
    @holder_name = holder_name
    @balance = balance
    @type = type
  end

  def deposit(amount)
    @balance += amount
  end

  def monthly_fee()
    if @type == "personal"
      @balance -= 10
    elsif @type == "business"
      @balance -= 50
    end 
end
end
