class CashRegister

  attr_accessor :total
  attr_reader :discount

  def initialize(discount = 0)
    @discount = discount
    @total = 0
  end

  def add_item(title, price, quantity = 1)
    self.total += (price * quantity)
  end

  def apply_discount
    @total = (@total - (@total * (@discount * 0.01))).to_i
    @total
    puts "After the discount, the total comes to $#{@total}."
  end

end
