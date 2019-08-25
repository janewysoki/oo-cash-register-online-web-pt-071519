class CashRegister
  
  attr_accessor :discount, :total
  
  def initialize(discount=nil) 
    @total = 0 
    @discount = discount
  end
  
  def add_item(title, price, quantity=1)
    @total += price * quantity  #@total += price is the same as saying @total = total + price
  end

  def apply_discount
    @total = @total - (@total * @discount)
  end

end

