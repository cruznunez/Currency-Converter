require "./currency.rb"
require "./currencyConverter.rb"

cash1 = Currency.new("€5.0", 'USD')
cash2 = Currency.new("10.0", 'USD')

puts "cash1.amount: #{cash1.amount}"
puts "cash1.code: #{cash1.code}"
puts "cash2.amount: #{cash2.amount}"
puts "cash2.code: #{cash2.code}"
puts "cash1 == cash2: #{cash1 == cash2}"
puts "cash1 != cash2: #{cash1 != cash2}"
puts "cash1 + cash2: #{cash1 + cash2}"
sum = cash1 + cash2

#puts "cash1*4: #{cash1*4}"
