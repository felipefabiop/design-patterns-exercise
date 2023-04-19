require './utils'

class Order
  attr_accessor :user, :products, :status, :total
  VALID_STATUSES = ['pending', 'processing', 'shipped', 'completed', 'cancelled']

  def initialize(user)
    @user = user
    @products = []
    @status = 'pending'
    @total = 0
  end

  def calculate_total
    @total = @products.sum(&:price)
  end

  def cost
    Utils.money_format(total)
  end

  def add_product(product)
    @products << product
    calculate_total
  end

  def remove_product(product)
    if @products.delete(product)
      calculate_total
    else
      puts "Product not found"
    end
  end

  def update_status(new_status)
    
    if VALID_STATUSES.include?(new_status)
      @status = new_status
    else
      puts "Invalid status"
    end
  end

#   .
#   .
#   .
#   .

end
