def get_name(person)
  return person[:name]
end

def get_tv_show(person)
  return person[:favourites][:tv_show]
end

# THIS ONE IS NOT CORRECT!  Only checking for spinach.  Its not robust.
# Need to check for person and if that corresponds to the food
def get_food_preference(person, favourite_food)
    if favourite_food == "spinach"
    return true
    else false
    end
  end


def get_add_friend(person, new_friend)
  person[:friends].push(new_friend)
end

def get_remove_friend(person, friend_for_deletion)
  person[:friends].delete(friend_for_deletion)
end



# Still doesn't work but its so close!!!!
# total outside of the function - its not global - need the @ 

def adding_money_of_everyone(people_array)
  total = 0
  for person in people_array
  individual = person[:monies]
  total += individual
  return total
end




end
