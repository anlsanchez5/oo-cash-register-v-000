
class CashRegister
  attr_accessor :total :discount

  def initialize(disocount = nil)
    @total = 0
    @discount = discount
  end

end
