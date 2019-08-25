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
    if discount
      @total = (@total - @total * @discount/100.0).to_i  #we need to convert this number to an integer otherwise we get an error message, "nil can't be coerced into Integer"
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
  end
  
end

