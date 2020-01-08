# counter = 0
# my_number = 5
#
# while (counter < my_number)
#   p "counter is #{counter}"
#   counter += 1
# end


# numbers = [1, 2, 3, 4, 5,]
#
# total = 0
#
# for number in numbers
# total += number
# end
#
# p total

chickens = [
  { name: "Margaret", age: 2, eggs: 0 },
  { name: "Hetty", age: 1, eggs: 2 },
  { name: "Henrietta", age: 3, eggs: 1 },
  { name: "Audrey", age: 2, eggs: 0 },
  { name: "Mabel", age: 5, eggs: 1 },
]

total_eggs = 0

for chicken in chickens
  if (chicken[:eggs] > 0)
    p "wooooo eggs"
  end 
  total_eggs += chicken[:eggs]
  chicken [:eggs] = 0
end

p total_eggs.to_s + " eggs collected"
p chickens

# for chicken in chickens
#   p "#{chicken [:name]} is #{chicken[:age]}"
# end
