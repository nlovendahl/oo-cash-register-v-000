class CashRegister

  attr_reader :total, :discount

  def initialize(discount = 0)
    @discount = discount
    @total = 0
  end

  def total=
    @total
  end

  def add_item(title, price)
  end

end
