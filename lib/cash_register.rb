class CashRegister

  attr_accessor :total
  attr_reader :discount

  def initialize(discount = 0)
    @discount = discount
    @total = 0
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    @total
  end

  def apply_discount
    if discount
      @total = @total - (@total * (@discount * 0.01))
      puts "After the discount, the total comes to $#{@total}."
    else
      puts "There is no discount to apply."
    end
  end

end
