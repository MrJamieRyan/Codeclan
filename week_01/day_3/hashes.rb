# # my_first_hash = Hash.new()
# #
# # my_second_hash = {}
# #
# # meals = {"breakfast" => "yoghurt", "lunch" => "roll", "dinner" => "steak"}
# # p meals
# #
# # p meals ['breakfast']
# #
# # meals ["supper"] = "pancakes"
# # meals ["breakfast"] = "toast"
# #
# # p meals
#
# names_hash = Hash.new()
#
# pocket_money = {
#   "Jamie" => 100,
#   "Lauren" => 1000,
#   "Loki" => 5}
#
# p pocket_money
#
# pocket_money.delete("Lokix")
#
# p pocket_money

# meals = {
#   breakfast: 'yoghurt',
#   lunch: 'roll'
# }
# p meals [:breakfast]


# countries = {
# 	uk: {
# 		capital: "London",
# 		population: 60000000
# 	},
# 	germany: {
# 		capital: "Berlin",
# 		population: 82000000
# 	}
# }
#
# p

avengers = {
	iron_man: {
    name: "Tony Stark",
    moves: {
      kick: 100,
      punch: 10
    }
   },
},
	hulk: {
    name: "Bruce Banner",
    moves: {
		  smash: 1000,
		  roll: 500
  }
}
}

p "hulks smash move" avengers [:hulk][:moves][:smash]
