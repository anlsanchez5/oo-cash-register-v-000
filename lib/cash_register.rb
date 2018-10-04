
class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = nil)
    if quantity == nil
      self.total += price
    else
      self.total += (price*quantity)
    end
  end

  def apply_discount
    discount_amount = @total * (@discount/100)
    final_amount = @total - discount_amount
    puts "After the discount, the total comes to $#{final_amount}."
  end
end
