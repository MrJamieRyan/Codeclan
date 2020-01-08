class Pub

  attr_reader(:name, :till, :drinks)

def initialize(name, till, drinks)

  @name = name
  @till = 0
  @drinks = nil
end

def increase_total_cash(amount)
  @till +=  amount
end

end
