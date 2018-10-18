class CashRegister

  attr_accessor :total, :discount, :title

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += (price * quantity)
    @title = title
    quantity.times do
      @items << self.title
    end
    last_transaction = self
  end

  def apply_discount
    if discount != 0
      self.total = (total - (total * (@discount * 0.01))).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.delete
  end

end
