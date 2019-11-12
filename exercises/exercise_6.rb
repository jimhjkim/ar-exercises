require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "K1", last_name: "V1", hourly_rate: 60)
@store1.employees.create(first_name: "K2", last_name: "V2", hourly_rate: 60)
@store2.employees.create(first_name: "K3", last_name: "V3", hourly_rate: 60)
@store2.employees.create(first_name: "K4", last_name: "V4", hourly_rate: 60)
@store2.employees.create(first_name: "K5", last_name: "V5", hourly_rate: 60)