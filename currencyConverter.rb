
class CurrencyConverter
  def initialize
    @conversions = {USD: 1.00, EUR: 0.89248, JPY: 119.779}
  end

  def convert(currency_object, code)
    code = code.to_s
    # puts @conversions[:USD]
    if code == currency_object.code
      return Currency.new("#{currency_object.amount}", code)
    else
      # puts "currency_object.amount: #{currency_object.amount}"
      # puts "@conversions[currency_object.code.to_sym]: #{@conversions[currency_object.code.to_sym]}"
      # puts "@conversions[code.to_sym]: #{@conversions[code.to_sym]}"
      # puts "currency_object.amount/@conversions[code.to_sym]: #{currency_object.amount/@conversions[code.to_sym]}"
      return (currency_object.amount)/(@conversions[currency_object.code.to_sym])*(@conversions[code.to_sym])
    end
  end

end
