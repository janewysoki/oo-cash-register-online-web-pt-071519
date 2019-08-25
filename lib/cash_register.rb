class CashRegister
  
  attr_accessor :discount
  
  def initialize(discount=nil) 
    @total = 0
    @discount = discount
  end
  
  def total
  end
  
  def add_item(title, price)
    total = total + price
  end

end

