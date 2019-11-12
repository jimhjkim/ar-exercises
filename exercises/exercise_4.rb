require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.create(
  name: 'Surrey',
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true
)

Whistler = Store.create(
  name: 'Whistler',
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false
)

yaletown = Store.create(
  name: 'Yaletown',
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true
)

puts "\nStores that carry men's apparel\n"

@mens_stores = Store.where(mens_apparel: true)

# loop approach 1
# for store in @mens_stores
#   puts "Name: #{store.name}\nAnnual Revenue: $#{store.annual_revenue}"
# end

# loop approach 2
@mens_stores.each do |store|
  puts "Name: #{store.name}\nAnnual Revenue: $#{store.annual_revenue}"
end


puts "\nStores that carry women's apparel and are generating less than $1M in annual revenue\n"

@bad_womens_stores = Store.where('womens_apparel: true' && 'annual_revenue < 1000000')

@bad_womens_stores.each do |store|
  puts "Name: #{store.name}\nAnnual Revenue: $#{store.annual_revenue}"
end
