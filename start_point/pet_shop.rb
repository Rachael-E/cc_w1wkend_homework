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

def pets_by_breed(pet, known_breed)
  # look in every pet, and check if breed is "short hair". If it is, stash in some container to save at the end. IF one is a shorthair, put it in results.
  total = []

  for breed in pet[:pets]
    if breed[:breed] == known_breed
      total.push(breed[:breeds])
    end
  end
  return total
end

def pets_by_breed(pet, nil_breed)
 total = []

 for breed in pet[:pets]
   if breed[:breed] == nil_breed
     total.push(breed[:breeds])
   end
 end
return total

end

def find_pet_by_name(pet, expected_name)

  for name in pet[:pets]
    if name[:breeds] == expected_name


end
