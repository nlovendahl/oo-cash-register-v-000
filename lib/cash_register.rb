class CashRegister

attr_accessor :total, :discount

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
  @prices = []
  @quantities = []
end

def total=(total)
  @total = total
end

def discount
  @discount
end

def total
  @total
end

def add_item(title, price, quantity = 1)
  :title == title
  :price == price
  :quantity == quantity
  quantity.times do
    @items << title
  end
  quantity.times do
    @prices << price
  end
  quantity.times do
    @quantities << quantity
  end
  @total += price * quantity
  total
end

def apply_discount
  if discount > 0
    @total = @total - (@discount * 10)
    "After the discount, the total comes to $#{@total}."
  else
    "There is no discount to apply."
  end
end

def items
  @items
end

def void_last_transaction
  @total = @total - @prices.last
end

end
