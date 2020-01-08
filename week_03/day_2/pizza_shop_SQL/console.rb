require('pry')
require_relative('models/pizza_orders')

order1 = PizzaOrder.new({
'first_name' => "Tony",
'last_name' => "Stark",
'quantity' =>  7,
'topping' => "Pepperoni"
})

order2 = PizzaOrder.new({
  'first_name' => "Bruce",
  'last_name' => "Wayne",
  'quantity' =>  100,
  'topping' => "Grilled Penguin"
})

PizzaOrder.delete_all()

order1.save
order2.save

binding.pry
nil
