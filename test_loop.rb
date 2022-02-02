blockchain = [
  { from_user: nil, to_user: "ben", amount: 20000 },
  { from_user: nil, to_user: "brian", amount: 20000 },
  { from_user: "ben", to_user: "evan", amount: 9000 },
  { from_user: "brian", to_user: "anthony", amount: 7000 },
  { from_user: "evan", to_user: "anthony", amount: 400 },
  { from_user: "ben", to_user: "anthony", amount: 1500 },
  { from_user: "anthony", to_user: "ben", amount: 4500 },
  { from_user: "anthony", to_user: "evan", amount: 1750 }
]

# Creating an array to return each unique, non nill, user
name_array = []

for transaction in blockchain
  name_array.push transaction[:from_user]
  name_array.compact!
  name_array.uniq!
end

for transaction in blockchain
  name_array.push transaction[:to_user]
  name_array.compact!
  name_array.uniq!
end

puts name_array

# Create starting balance variables

for name in name_array
  puts name + " balance"
end
