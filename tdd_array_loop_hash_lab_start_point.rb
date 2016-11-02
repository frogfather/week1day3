def add_array_lengths(prices, costs)
  return prices.length + costs.length
end

def sum_array(array1)
sum=0
  for number in array1
  sum = sum + number
  end
return sum
end

def find_item(string_to_find, array1)
for item in array1
  return true if item==string_to_find
end
return false
end


def first_key_name(hash1)
return hash1.keys.first
end


def array_of_capitals(countries)
  capitals = []
  for country, data in countries
    #data is a hash with capital and population
    #we want the capital
    capitals.push(data[:capital])
  end
  return capitals  
end

