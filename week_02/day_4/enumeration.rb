chickens = ["Margaret", "Hetty", "Henrietta", "Audrey", "Mabel"]

# for chicken in chickens
#   p chicken
# end
#
# chickens.each { |chicken| p chicken }
#
# chickens.each do |chicken|
#   shouty_chicken = chicken.upcase
#   p shouty_chicken
# end
#

# chicken_name_lengths = []
#
# chickens.each { |chicken| chicken_name_lengths << chicken.length()}
#
# p chicken_name_lengths

# chicken_name_lengths = chickens.map { |chicken| chicken.length() }
# p chicken_name_lengths
#
# chickens.each_with_index { |chicken, index| p "#{chicken} #{index +1}"}

# found_chicken = chickens.find { |chicken| chicken[0] == "H" }
#
# p found_chicken

# chickens_as_one_string_with_commas = chickens.reduce do |accumulator, current_chicken|
# accumulator + ", " + current_chicken
# end
#
#
# p chickens_as_one_string_with_commas

numbers = [1, 2, 3, 4, 5]

sum = numbers.reduce {| running_total, number| running_total + number}
