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
  end

end
