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
@store1.employees.create(first_name: "Ali", last_name: "Done", hourly_rate: 50)
@store2.employees.create(first_name: "Jush", last_name: "Rick", hourly_rate: 55)
@store2.employees.create(first_name: "Samir", last_name: "Salim", hourly_rate: 40)
@store1.employees.create(first_name: "Nicole", last_name: "kerim", hourly_rate: 75)
