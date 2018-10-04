require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items


  def initialize(discount = nil)
    @items = []
    @total = 0
    @discount = discount

  end

  def add_item(item, price, quantity = nil)
    @items << item
    if quantity == nil
      self.total += price
    else
      self.total += (price*quantity)
    end
  end

  def apply_discount
    if @discount == nil
      return "There is no discount to apply."
    else
      discount_amount = @total * (@discount/100.0)
    self.total -= discount_amount
    return "After the discount, the total comes to $#{@total.round}."
    end
  end

  def items
    @items
  end

end
