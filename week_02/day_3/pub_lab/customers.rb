class Customers

  attr_reader(:name, :wallet, :drinks)

def initialize(name, wallet, drinks)
  @name = name
  @wallet = wallet
  @drinks = drinks

end

def buy_drink(amount)
  @wallet -= amount
end

def add_drink(drink)
  @drinks.push(drink)
end
end
