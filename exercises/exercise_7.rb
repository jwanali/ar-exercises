require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"
# Your code goes here ...

puts " Please inpute a store name"
name1 = gets.chomp
puts " Please inpute a store annual_revenue"
annual_revenue1 = gets.chomp

store = Store.create(name:name1, annual_revenue: annual_revenue1, mens_apparel: true, womens_apparel: false)

puts store.errors.full_messages



