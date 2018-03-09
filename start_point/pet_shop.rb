def pet_shop_name(shop_name)
  return shop_name[:name]
end

def total_cash(cash_in_shop)
  return cash_in_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop_object, value)
  pet_shop_object[:admin][:total_cash] += value
  #   # pet_shop_object[:admin][:total_cash] = pet_shop_object[:admin][:total_cash] + value
  #   # pet_shop_object[:admin][:total_cash] += value
  #   #
  #   # new_total = pet_shop_object[:admin][:total_cash] + value
  #   # pet_shop_object[:admin][:total_cash] = new_total
  #   #
  #   # p "yay"
  #   # p "total cash #{pet_shop_object[:admin][:total_cash] + 10} pounds"
  #   # pet_shop_object[:admin][:total_cash] += 50
  #   # p pet_shop_object[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop_object, value)
  pet_shop_object[:admin][:total_cash] += value #-= 'saves' the result to the array, rather than temporarily storing it.

end

def pets_sold(no_pets_sold)
  return no_pets_sold[:admin][:pets_sold]
end

def increase_pets_sold(no_pets_sold, new_sold_value)
  no_pets_sold[:admin][:pets_sold] += new_sold_value
  # p no_pets_sold[:admin][:pets_sold] # this will show me new number pets sold.

end

def stock_count(no_of_pets)
  no_of_pets[:pets].length # remember that .length returns the number of items within the pets array.
end

def pets_by_breed(pet_shop, known_breed)
  # look in every pet, and check if breed is "short hair". If it is, stash in some container to save at the end. IF one is a shorthair, put it in results.
  total = []

  for breed in pet_shop[:pets]
    if breed[:breed] == known_breed
      total.push(breed)
    end
  end
  return total
end

# def pets_by_breed(pet_shop, nil_breed)
#  total = []
#
#  for breed in pet_shop[:pets]
#    if breed[:breed] == nil_breed
#      total.push(breed)
#    end
#  end
# return total

# end
#
def find_pet_by_name(ps, expected_name)
  result = nil
  for pet in ps[:pets]
    if pet[:name] == expected_name # total << name
      result = pet
    end
  end
  return result
end

def remove_pet_by_name(shop, expected_name)
  number_pets = shop[:pets].length #this is the length of the pets array!
  max_index = number_pets -1 #accounting for 6 (the length) minus 1 to return the actual number of indexes within the pets: array, which is 5.

  for index in 0..max_index #index in this case is like a holding item.
    pet_at_index = shop[:pets][index] # pet_at_index will return an integer!
    p "A pet at index #{index} is called #{pet_at_index[:name]}"
    if pet_at_index[:name] == expected_name
      p "pet we're after is at index #{index}"
      shop[:pets].delete_at(index)# this deletes the pet from the pet's array because it's sitting within the returned index number.
      return
    end
  end
end
