
class CurrencyConverter
  def initialize
    @conversions = {USD: 1.00, EUR: 0.89248, JPY: 119.779}
  end

  def convert(currency_object, code)
    code = code.to_sym
    # puts code                                     #debugging
    # puts @conversions[:USD]
    if code == currency_object.code
      # puts "new code same as old code"            #debugging
      return Currency.new("#{currency_object.amount}", code)
    elsif @conversions.include?(code)
      # puts "@conversions.include?(code) true"     #debugging
      old_amount = currency_object.amount
      old_rate = @conversions[currency_object.code.to_sym]
      new_rate = @conversions[code.to_sym]
      new_amount = old_amount/old_rate*new_rate
      new_currency = Currency.new("#{new_amount}", code)
      return new_currency.amount, new_currency.code
    else
      # puts "convert method failed"                #debugging
      raise UnknownCurrencyCodeError
    end
  end
end
