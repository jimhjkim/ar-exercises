require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "Total annual revenue: $#{Store.all.sum('annual_revenue')}"
# puts "Average annual revenue: $#{Store.all.sum('annual_revenue') / Store.all.count}"
puts "Average annual revenue: $#{Store.all.average('annual_revenue')}"

puts "# of stores generating $1M or more in annual sales: #{Store.where('annual_revenue >= 1000000').size}"