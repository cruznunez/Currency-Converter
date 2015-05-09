require "./currency.rb"
require "./currencyConverter.rb"

cash1 = Currency.new("€5.0", 'USD')
cash2 = Currency.new("10.0", 'USD')
cash3 = Currency.new("20", "JPY")

puts "cash1.amount: #{cash1.amount}"
#puts "cash1.amount.class: #{cash1.amount.class}"
puts "cash1.code: #{cash1.code}"
puts "cash2.amount: #{cash2.amount}"
puts "cash2.code: #{cash2.code}"
puts "cash3.amount: #{cash3.amount}"
puts "cash3.code: #{cash3.code}"
puts "cash1 == cash2: #{cash1 == cash2}"
puts "cash1 != cash2: #{cash1 != cash2}"
# puts "cash1 + cash2: #{cash1 + cash2}"    #comment out to skip error messages
# puts "cash1 - cash2: #{cash1 - cash2}"    #comment out to skip required error messages
puts "cash1*4: #{cash1*4.0}"

currency_converter = CurrencyConverter.new

puts "currency_converter.convert(cash1, :USD): #{currency_converter.convert(cash1, :USD)}"
puts "currency_converter.conver(cash1, :JPY): #{currency_converter.convert(cash1, :JPY)}"
