class Currency
  def initialize(amount=0.0, code='$')
    currency_symbols = {"€" => "EUR", "$" => "USD"}
    def symbol_check(hash, string)
      hash.each do |key, value|
        if string.include?(key)
          return true
        end
      end
      return false
    end

    def symbol_get(hash, string)
      hash.each do |key, value|
        if string.include?(key)
          return key, value
        end
      end
    end

    if symbol_check(currency_symbols, amount)
      puts "sym_check true"               #debugging
      symbol, code = symbol_get(currency_symbols, amount)
      @amount = amount.delete(symbol)
      @code = code
    else
      puts "sym_check false"              #debugging
      @amount = amount.to_i
      @code = code
    end

    # @amount = amount
    # @code = code
  end

  def amount
    @amount
  end

  def code
    @code
  end

  def == (other)
    if @amount == other.amount && @code == other.code     #don't know what I'm doing
      true
    else
      false
    end
  end

  def != (other)
    unless @amount == other.amount && @code == other.code
      true
    else
      false
    end
  end

  def + (other)
    if @code == other.code
      @amount + other.amount
    else
      raise DifferentCurrencyCodeError
      #"Error 404: Cannot add different types of currency (#{@code} and #{other.code})!"
    end
  end

  def - (other)
    if @code == other.code
      @amount - other.amount
    else
      "Error 404: Cannot add different types of currency!"
    end
  end

  def * (other)
    Currency.new(@amount*other).amount
  end
end
