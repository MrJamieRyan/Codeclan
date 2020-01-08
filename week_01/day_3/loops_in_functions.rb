chickens = [
  { name: "Margaret", age: 2, eggs: 0 },
  { name: "Hetty", age: 1, eggs: 2 },
  { name: "Henrietta", age: 3, eggs: 1 },
  { name: "Audrey", age: 2, eggs: 0 },
  { name: "Mabel", age: 5, eggs: 1 },
]

# def count_eggs(array)
#   chickens = [
#     { name: "Margaret", age: 2, eggs: 0 },
#     { name: "Hetty", age: 1, eggs: 2 },
#     { name: "Henrietta", age: 3, eggs: 1 },
#     { name: "Audrey", age: 2, eggs: 0 },
#     { name: "Mabel", age: 5, eggs: 1 },
#   ]
#
#   total_eggs = 0
#
#   for bird in array
#     total_eggs += bird[:eggs]
#     bird [:eggs] = 0
#   end
#
#   return total_eggs.to_s + " eggs collected"
#
# end
#
# p count_eggs(chickens)

# for chicken in chickens
#   if chicken[:name] == "Audrey"
#     p "I found Audrey"
#   end
# end

def find_chicken_by_name(array, name)
  for chicken in array
    if chicken[:name] == name
      return chicken
    end
  end

  return nil
end

p find_chicken_by_name(chickens, "Audrey")
p find_chicken_by_name(chickens, "Hetty")
p find_chicken_by_name(chickens, "Betty")
